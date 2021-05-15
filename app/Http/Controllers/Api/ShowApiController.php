<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Models\Show;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class ShowApiController extends Controller
{

    /**
     * test.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function test(Request $request)
    {
        $validator = Validator::make($request->all(),[
            
            'nom' => 'required|max:10',
            'email' => 'required|min:15',
        ],[
            'nom.required' => 'Le nom est obligatoire',
            'email.required' => 'L\'email est obligatoire',
        ]);

        if($validator->fails()){

            return response()->json(['error' => $validator->errors()]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getAllShows()
    {
        $shows = Show::all();
        
        return $shows;
    }    
}
