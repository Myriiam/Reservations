<?php

namespace App\Http\Controllers;

use App\Models\Show;
use App\Models\Representation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Cache;

class ShowController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $shows = DB::table('shows')->simplePaginate(12);

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
        session(['collaborateurs' => $collaborateurs]);

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
        $collaborateurs = [];
        
        foreach($show->artistTypes as $at) {
            $collaborateurs[$at->type->type][] = $at->artist;
        }

        if($quantity < 1 || empty($request->date)){
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
     * Confirmation method of booking a show.
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
        $test = $request->input('sortType');

        if ($test) {
            Cache::put('sort', $test, );
        }

        switch (Cache::get('sort')) {
            case 'priceAsc': 
                $paginatedShows = Show::orderBy('price', 'asc')->paginate(12);
                break;
            case 'priceDesc': 
                $paginatedShows = Show::orderBy('price', 'desc')->paginate(12);
                break;
            case 'titleAsc': 
                $paginatedShows = Show::orderBy('title', 'asc')->paginate(12);
                break;
            case 'titleDesc': 
                $paginatedShows = Show::orderBy('title', 'desc')->paginate(12);
                break;
            default:
                $paginatedShows = DB::table('shows')->simplePaginate(12);
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
