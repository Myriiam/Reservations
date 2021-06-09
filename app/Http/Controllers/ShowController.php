<?php

namespace App\Http\Controllers;

use App\Models\Show;
use App\Models\Artist;
use GuzzleHttp\Client;
use App\Models\ArtistType;
use Illuminate\Http\Request;
use App\Models\Representation;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cache;

class ShowController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        session(['search_criteria' => $request->title]);
        
        if ($request && $request->title) {
            $shows = DB::table('shows')->where('title', 'LIKE', "%{$request->title}%")->paginate(12);
            $shows->withPath("show?title={$request->title}");
        } else {
            $shows = DB::table('shows')->paginate(12);
        }

        return view('show.index',[
            'shows' => $shows,
            'resource' => 'spectacles',
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $show = Show::firstWhere('slug', $slug);
        $representations = DB::table('representations')->where('show_id', $show->id)->get();

        //Récupérer les artistes du spectacle et les grouper par type
        $collaborateurs = [];
        
        foreach($show->artistTypes as $at) {
            $collaborateurs[$at->type->type][] = $at->artist;
        }

        return view('show.show',[
            'show' => $show,
            'collaborateurs' => $collaborateurs,
            'representations' => $representations,
        ]);
    }

    /**
     * Method to book a show.
     *
     * @param  int  $id
     * @param  request  $request
     * @return \Illuminate\Http\Response
     */
    public function booking($id,Request $request)
    {
        $show = Show::find($id);
        $quantity = $request->quantity;
        $price = $quantity*$show->price;
        $date = $request->date;
        $representations = DB::table('representations')->where('show_id', $id)->where('when', $date)->get();

        if($quantity < 1 || empty($request->date)){
            //Récupérer les artistes du spectacle et les grouper par type
            $collaborateurs = [];
            
            foreach($show->artistTypes as $at) {
                $collaborateurs[$at->type->type][] = $at->artist;
            }
            return view('show.show',[
                'show' => $show,
                'message' => "Vous n'avez pas remplis tous les champs",
                'representations' => $representations,
                'collaborateurs' => $collaborateurs,
            ]);
        } else {
            session([
                'qty' => $quantity,
                'price' => $price,
                'representations' => $representations,
                'date' => $date,
                'show' => $show,
                ]);
            return view('show.booking',[
                'show' => $show,
                'qty' => $quantity,
                'price' => $price,
                'date' => $date,
            ]);
        }
    }

    /**
     * Confirmation method to booking a show.
     *
     * @param  int  $id
     * @param  request  $request
     * @return \Illuminate\Http\Response
     */
    public function bookingConfirm($id,Request $request)
    {
        $show = Show::find($id);

        return view('show.confirmation',[
            'show' => $show,
            'request' => $request,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Request  $request
     * @return \Illuminate\Http\Response
     */
    public function sort(Request $request)
    {
        if(session('search_criteria')) {
            $title = session('search_criteria');
            $query = DB::table('shows')->where('title', 'LIKE', "%{$title}%");
        }
        else {
            $query = DB::table('shows');
        }

        if ($request->input('sortType')) {
            $sortType = explode('_', $request->input('sortType'));
            $paginatedShows = $query->orderBy($sortType[0], $sortType[1])->paginate(12);
            $paginatedShows->withPath("sort?sortType={$sortType[0]}_{$sortType[1]}");
        } else {
            $paginatedShows = $query->simplePaginate(12);
        }

        return view('show.index',[
            'shows' => $paginatedShows,
            'resource' => 'spectacles',
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function fill(Request $request)
    {
        if (! Gate::allows('fetch')) {
            return redirect()->route('home');
        }

        $toAdd = [];
        $checkedShows = $request->input();

        $client = new Client([
            'base_uri' => 'https://60bbc78f3a39900017b2dea7.mockapi.io/api/other_shows/',
            'verify' => false
        ]);
        $response = $client->request('GET', 'shows');
        $response = json_decode($response->getBody()->getContents());

        foreach ($response->shows as $object) {
            if(array_key_exists($object->show->slug, $checkedShows)) {
                $object->show->bookable = false;
                $object->show->poster_url = 'default.jpg';
                
                $lastShow = Show::firstOrCreate(
                    ['title' => $object->show->title],
                    (array)$object->show
                );

                foreach ($object->actors as $actor) {
                    $lastActor = Artist::firstOrCreate(
                        ['firstname' => $actor->firstname, 'lastname' => $actor->lastname],
                    );

                    $artistType = ArtistType::firstOrCreate(
                        ['type_id' => 3, 'artist_id' => $lastActor->id],
                    );

                    $artistType = DB::table('artist_type_show')->insert(
                        ['artist_type_id' => $artistType->id, 'show_id' => $lastShow->id],
                    );
                }

                foreach ($object->scene as $director) {
                    $lastActor = Artist::firstOrCreate(
                        ['firstname' => $actor->firstname, 'lastname' => $actor->lastname],
                    );

                    $artistType = ArtistType::firstOrCreate(
                        ['type_id' => 2, 'artist_id' => $lastActor->id],
                    );

                    $artistType = DB::table('artist_type_show')->insert(
                        ['artist_type_id' => $artistType->id, 'show_id' => $lastShow->id],
                    );
                }

                foreach ($object->authors as $author) {
                    $lastActor = Artist::firstOrCreate(
                        ['firstname' => $actor->firstname, 'lastname' => $actor->lastname],
                    );

                    $artistType = ArtistType::firstOrCreate(
                        ['type_id' => 1, 'artist_id' => $lastActor->id],
                    );

                    $artistType = DB::table('artist_type_show')->insert(
                        ['artist_type_id' => $artistType->id, 'show_id' => $lastShow->id],
                    );
                }
            }
        }

        return redirect()->route('show');
    }

    public function fetch()
    {
        if (! Gate::allows('fetch')) {
            return redirect()->route('home');
        }
        $shows = [];
        $client = new Client([
            'base_uri' => 'https://60bbc78f3a39900017b2dea7.mockapi.io/api/other_shows/',
            'verify' => false
        ]);
        $response = $client->request('GET', 'shows');
        $response = json_decode($response->getBody()->getContents());

        foreach ($response->shows as $object){
            $object->bookable= false;
            if(!Show::where('slug', '=', $object->show->slug)->exists()){
                $shows[] = new Show((array)$object->show);
            }
        }
        return view('show.fetch', [
            'shows' => $shows
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
