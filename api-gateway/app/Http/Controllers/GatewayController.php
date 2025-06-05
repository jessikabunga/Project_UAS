<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class GatewayController extends Controller
{
    private $authService = 'http://localhost:8001'; // auth-service
    private $movieService = 'http://localhost:8002'; // movie-service
    private $orderService = 'http://localhost:8003'; // order-service

    public function login(Request $request)
    {
        $response = Http::post("$this->authService/login", $request->all());
        return response($response->json(), $response->status());
    }

    public function register(Request $request)
    {
        $response = Http::post("$this->authService/register", $request->all());
        return response($response->json(), $response->status());
    }

    // GET /api/movies
    public function getMovies(Request $request)
    {
        $response = Http::withToken($request->bearerToken())
                        ->get("$this->movieService/movies");
        return response($response->json(), $response->status());
    }

    // GET /api/movies/{id}
    public function getMovieById(Request $request, $id)
    {
        $response = Http::withToken($request->bearerToken())
                        ->get("$this->movieService/movies/$id");
        return response($response->json(), $response->status());
    }

    // POST /api/movies
    public function createMovie(Request $request)
    {
        $response = Http::withToken($request->bearerToken())
                        ->post("$this->movieService/movies", $request->all());
        return response($response->json(), $response->status());
    }

    // PUT /api/movies/{id}
    public function updateMovie(Request $request, $id)
    {
        $response = Http::withToken($request->bearerToken())
                        ->put("$this->movieService/movies/$id", $request->all());
        return response($response->json(), $response->status());
    }

    // DELETE /api/movies/{id}
    public function deleteMovie(Request $request, $id)
    {
        $response = Http::withToken($request->bearerToken())
                        ->delete("$this->movieService/movies/$id");
        return response($response->json(), $response->status());
    }

    public function createOrder(Request $request)
    {
        $response = Http::withToken($request->bearerToken())
                        ->post("$this->orderService/orders", $request->all());
        return response($response->json(), $response->status());
    }

    public function getOrders(Request $request)
    {
        $response = Http::withToken($request->bearerToken())
                        ->get("$this->orderService/orders");
        return response($response->json(), $response->status());
    }

}
