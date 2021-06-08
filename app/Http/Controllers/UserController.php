<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;



class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        //
    }

    /**
     * Display the profile page of the connected user.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function profilDisplay()
    {

       //$user = User::find(auth()->user());
       $user = auth()->user();

       $roleUser = $user->role;
       //dd($roleUser);
       $today = Carbon::today();

        return view('profil.show',[
            'user' => $user,
            'roleUser' => $roleUser,
            'resource' => 'Profil utilisateur',
            'today' => $today,
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
       //$user = User::find(auth()->user());
       $user = auth()->user();

       $roleUser = $user->role;
       //dd($roleUser);
       $today = Carbon::today();

        return view('profil.edit',[
            'user' => $user,
            'roleUser' => $roleUser,
            'resource' => 'Profil utilisateur',
            'today' => $today,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $user = User::findOrFail($id);

        $user->update($request->all());


        // Validation
        $request->validate([
            'file' => 'required|mimes:png,jpg,jpeg,csv,txt,pdf|max:2048'
        ]);

        if($request->file('avatar')) {
            $file = $request->file('avatar');
            $filename = time().'_'.$file->getClientOriginalName();

            // File upload location
            $location = 'public/storage/app/user';

            // Upload file
            $file->move($location,$filename);

        }

        return redirect('/welcome')->with('message', 'Votre profil a été mis à jours !');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if(User::find($id)){
            $user = User::find($id);
            Auth::logout();
            $user->delete();
           // Notification::container()->success('Your account has been permanently removed from the system. Sorry to see you go!');
           $message = 'Votre compte a été définitivement supprimé !';
            return view('welcome',[
                'message' => $message,
            ]);
        }
    }
}
