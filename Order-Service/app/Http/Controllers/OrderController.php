<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    // GET /orders
    public function index(Request $request)
    {
        $userId = $request->auth->sub;
        $orders = Order::where('user_id', $userId)->get();
        return response()->json($orders);
    }


    // POST /orders
    public function store(Request $request)
    {
        $this->validate($request, [
            'movie_title' => 'required|string',
            'qty' => 'required|integer|min:1',
        ]);

        $userId = $request->auth->sub;

        $order = Order::create([
            'user_id' => $userId,
            'movie_title' => $request->movie_title,
            'qty' => $request->qty,
        ]);

        return response()->json([
            'message' => 'Order created successfully',
            'data' => $order
        ], 201);
    }
}
