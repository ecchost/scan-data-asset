<?php

namespace App\Http\Middleware;

use Closure;
Use Illuminate\Support\Facades\Auth;

class isAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::user() && Auth::user()->user_level == 'admin') {
            return $next($request);
        }
        return redirect('dashboard');
    }
}
