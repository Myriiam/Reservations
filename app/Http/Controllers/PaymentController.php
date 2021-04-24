<?php

namespace App\Http\Controllers;

use App\Models\Representation;
use Illuminate\Http\Request;
use Stripe;
use Session;
use App\Models\Show;
use Illuminate\Support\Facades\Auth;
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
        $qty = $request->session()->get('qty');
        $price = $request->session()->get('price');
        $name = $request->session()->get('show')->title;
        $date = $request->session()->get('date');
        $collaborateurs = $request->session()->get('collaborateurs');
        $show = Show::find($id);
        $user = Auth::id();
        $representations = $request->session()->get('representations');

        try {
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create ([
            "amount" => $price * 100,
            "currency" => "EUR",
            "source" => $request->stripeToken,
            "description" => "Paiement de votre réservation pour la pièce ".$name." au Théatre.",
        ]);
            DB::table('representation_user')->insert([
                ['user_id' => $user, 'representation_id' => $representations[0]->id],
            ]);

            return view('show.confirmation',[
                "show" => $show,
                "message" => "Le paiement de votre réservation a été éffectué",
                'collaborateurs' => $collaborateurs,
                'representations' => $representations,
                'date' => $date,
                'price' => $price,
                'qty' => $qty,
                'title' => $name,
            ]);
        } catch(\Exception $ex)
        {
            return view('show.show',[
                "show" => $show,
                "message" => "Une erreur est survenue",
                'collaborateurs' => $collaborateurs,
                'representations' => $representations,
                ]);
        }
    }
}