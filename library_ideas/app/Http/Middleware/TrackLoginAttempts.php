<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Session;

class TrackLoginAttempts
{
    public function handle($request, Closure $next)
    {
        $attempts = Session::get('login_attempts', 0);

        if ($attempts >= 3) {
            // Redirect or handle when login attempts exceed the limit
            return redirect()->route('login')->with('error', 'Too many login attempts. Please try again later.');
        }

        return $next($request);
    }
}
