<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stripe;
use Session;
use App\Models\Show;
use Illuminate\Support\Facades\DB;

class PaymentController extends Controller
{
    /**
     * payment view
     */
    public function index()
    {
        return view('home');
    }

    /**
     * payment view
     */
    public function handleGet()
    {
        return view('payment.payment');
    }
  
    /**
     * handling payment with POST
     */
    public function handlePost($id,Request $request)
    {
        $show = Show::find($id);
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create ([
                "amount" => 100 * 150,
                "currency" => "inr",
                "source" => $request->stripeToken,
                "description" => "Paiement de votre réservation au Théatre." 
        ]);
        $representations = DB::table('representations')->where('show_id', $id)->get();
        $collaborateurs = [];
        
        foreach($show->artistTypes as $at) {
            $collaborateurs[$at->type->type][] = $at->artist;
        }

        if(true){
            return view('show.show',[
                "show" => $show,
                "message" => "Le paiement de votre réservation a été éffectué",
                'collaborateurs' => $collaborateurs,
                'representations' => $representations,
                ]);
        } else {
            return view('show.show',[
                "show" => $show,
                "message" => "Une erreur est survenue",
                'collaborateurs' => $collaborateurs,
                'representations' => $representations,
                ]);
        }
    }
}