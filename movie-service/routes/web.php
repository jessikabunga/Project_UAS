<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Di sini kamu definisikan route yang digunakan aplikasi
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['middleware' => 'auth'], function () use ($router) {
    $router->get('/movies', 'MovieController@index');
    $router->get('/movies/{id}', 'MovieController@show');
    $router->post('/movies', 'MovieController@store');
    $router->put('/movies/{id}', 'MovieController@update');
    $router->delete('/movies/{id}', 'MovieController@destroy');
});
