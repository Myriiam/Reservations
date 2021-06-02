<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Role;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     *
     * @param  \App\Http\Requests\Auth\LoginRequest  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(LoginRequest $request)
    {
        $request->authenticate();
        $request->session()->regenerate();

        $id = Auth::id();

        $user = User::where('id','=',$id)->first();
        session(['user' => $user]);
        $role = $user->role->name;
        
        if($role === "admin")
        {
            return redirect()->intended(RouteServiceProvider::BACK);
        } else if($role === "user"){
            return redirect()->intended(RouteServiceProvider::WELCOME);
        } else if($role === "affiliate"){
            return redirect()->intended(RouteServiceProvider::WELCOME);
        } else {
            return redirect()->intended(RouteServiceProvider::HOME);
        }  
    }

    /**
     * Destroy an authenticated session.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
