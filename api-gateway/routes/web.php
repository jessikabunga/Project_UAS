<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->post('/api/login', 'GatewayController@login');
$router->post('/api/register', 'GatewayController@register');
$router->group(['prefix' => '/api/movies'], function () use ($router) {
    $router->get('/', 'GatewayController@getMovies');
    $router->get('/{id}', 'GatewayController@getMovieById');
    $router->post('/', 'GatewayController@createMovie');
    $router->put('/{id}', 'GatewayController@updateMovie');
    $router->delete('/{id}', 'GatewayController@deleteMovie');
});
$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('/orders', 'GatewayController@createOrder');
    $router->get('/orders', 'GatewayController@getOrders');
});

