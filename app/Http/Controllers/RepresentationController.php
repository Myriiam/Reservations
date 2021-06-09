<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Show;
use Illuminate\Http\Request;
use App\Models\Representation;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class RepresentationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $representations = Representation::all();
        
        return view('representation.index',[
            'representations' => $representations,
            'resource' => 'représentations',
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {   
        $representation = Representation::find($id);
        $date = Carbon::parse($representation->when)->format('d/m/Y');
        $heure = Carbon::parse($representation->when)->format('G:i');
        
        return view('representation.show',[
            'representation' => $representation,
            'date' => $date,
            'heure' => $heure,
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
        $date = Carbon::parse($request->date)->format('d/m/Y');
        $hour = Carbon::parse($request->date)->format('G:i');
        $slug = $show->slug;
        $location_id = $request->place;
        $place = DB::table('locations')->where('id', '=', $location_id)->get();

        $representations = DB::table('representations')->where([
            ['show_id', '=', $show->id],
        ])->get();

          
        if(($quantity > 0) && !empty($request->date)) {
            session([
                'qty' => $quantity,
                'price' => $price,
                'representations' => $representations,
                'date' => $date,
                'show' => $show,
                'place' => $place,
                'hour' => $hour,
                ]);
            return view('show.booking',[
                'show' => $show,
                'qty' => $quantity,
                'price' => $price,
                'date' => $date,
                'place' => $place,
                'hour' => $hour,
                ]);

        } elseif(($quantity > 0) && empty($request->date)) {

            if(empty($representations->when))
            {
                if(empty($representations->when) && $show->bookable == true)
                {
                    session([
                        'qty' => $quantity,
                        'price' => $price,
                        'representations' => NULL,
                        'date' => NULL,
                        'show' => $show,
                        'place' => $place,
                        'hour' => $hour,
                        ]);

                    return view('show.booking',[
                        'show' => $show,
                        'qty' => $quantity,
                        'price' => $price,
                        'date' => NULL,
                        'place' => $place,
                        'hour' => $hour,
                        ]);
                }
                elseif(empty($representations->when) && $show->bookable == false)
                {
                    Session::flash('message', 'Ce spectacle n\'est pas réservable'); 
                    return redirect()->route('show_show', 
                    ['slug' => $slug]);
                }
                else
                {
                    Session::flash('message', 'Veuillez choisir une date'); 
                    return redirect()->route('show_show', 
                    ['slug' => $slug]);
                }
            }


        } elseif(($quantity < 1) && !empty($request->date)) {  
            Session::flash('message', 'Veuillez choisir une quantité'); 
            return redirect()->route('show_show', 
            ['slug' => $slug]);
            
        } else {
            Session::flash('message', 'Veuillez remplir tous les champs'); 
            return redirect()->route('show_show', 
            ['slug' => $slug]);
        }
    }
}
