<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Movie;

class MovieController extends Controller
{
    public function index() {
        return response()->json(Movie::all());
    }

    public function show($id) {
        $movie = Movie::find($id);
        return $movie ? response()->json($movie) : response()->json(['message' => 'Not Found'], 404);
    }

    public function store(Request $request) {
        $movie = Movie::create($request->all());
        return response()->json($movie, 201);
    }

    public function update(Request $request, $id) {
        $movie = Movie::find($id);
        if (!$movie) return response()->json(['message' => 'Not Found'], 404);
        $movie->update($request->all());
        return response()->json($movie);
    }

    public function destroy($id) {
        $movie = Movie::find($id);
        if (!$movie) return response()->json(['message' => 'Not Found'], 404);
        $movie->delete();
        return response()->json(['message' => 'Deleted']);
    }
}