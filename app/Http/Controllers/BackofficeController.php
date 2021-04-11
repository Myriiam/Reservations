<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Show;
use Illuminate\Support\Facades\DB;

class BackofficeController extends Controller
{
        
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $message = "Bienvenue Admin";
        $resource = "Bienvenue sur le back office";
        // Date de vente
        $date = "06/12/2021";
        // Par quel user
        $customer = "Jean Luc";

        return view('backoffice.home',[
            'message' => $message,
            'resource' => $resource,
            'date' => $date,
            'customer' => $customer,
        ]);
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function transactions()
    {
        $message = "Bienvenue Admin";
        $resource = "Bienvenue sur le back office";
        // Date de vente
        $date = "06/12/2021";
        // Par quel user
        $customer = "Jean Luc";

        return view('backoffice.transactions',[
            'message' => $message,
            'resource' => $resource,
            'date' => $date,
            'customer' => $customer,
        ]);
    }
}



