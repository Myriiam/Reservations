<?php

namespace App\Http\Controllers;

use App\Models\Show;
use App\Models\Artist;
use GuzzleHttp\Client;
use App\Models\Location;
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
     * Select a place to see all dates.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function selectPlace()
    {
        $place = $_GET['place'];
        $show_id = $_GET['showSelected'];
        $show = Show::find($show_id);
        $dates = [];
        $location_id = Location::where('designation', $place)->get();
        $location_id = $location_id[0]->id;
        //Récupérer les artistes du spectacle et les grouper par type
        $collaborateurs = [];

        foreach($show->artistTypes as $at) {
            $collaborateurs[$at->type->type][] = $at->artist;
        }

        $representations = Representation::where([
            ['show_id', $show_id],
            ['location_id', $location_id],
        ])->get();

        foreach($representations as $representation)
        {
            array_push($dates ,$representation->when);
        }
        return view('show.show', [
            'id' => $show_id,
            'dates' => $dates,
            'show' => $show,
            'collaborateurs' => $collaborateurs,
            'place' => $place,
        ]);
    }


    /**
     * Select a date to see all places.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function selectDate($slug)
    {
        //TODO
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
