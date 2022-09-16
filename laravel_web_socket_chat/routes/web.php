<?php

use App\Events\WebsocketDemoEvent;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {

    broadcast(new WebsocketDemoEvent('some data'));

    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/ckeditor', function(){
    return view("ckeditor");
} );

Route::get('/chats', 'ChatsController@index')->name('chats');

Route::get('/messages', 'ChatsController@fetchMessages')->name('fetch.messages');
Route::post('/messages', 'ChatsController@sendMessages')->name('send.messages');
