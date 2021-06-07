<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Show;
use Illuminate\Http\Request;
use App\Models\Representation;
use Illuminate\Support\Facades\DB;

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
        $date = $request->date;
        $slug = $show->slug;

        $representations = DB::table('representations')->where([
            ['show_id', '=', $id],
            ['when', '=', $date],
        ])->get();

        if($quantity < 1 || empty($request->date)){
            return redirect()->action([ShowController::class, 'show', $slug]);
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
}
