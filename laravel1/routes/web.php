<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/', 'HomeController');
Route::view('/teste', 'teste');

Route::prefix('/tarefas')->group(function(){

    Route::get('/', 'TarefasController@list'); //Listagem de tarefas

    Route::get('add', 'TarefasController@add'); //Tela de adição
    Route::post('add', 'TarefasController@addAction'); //Ação de adição

    Route::get('edit/{id}', 'TarefasController@edit'); //Tela de edição
    Route::post('edit/{id}', 'TarefasController@editAction'); //Ação de edição

    Route::get('delete/{id}', 'TarefasController@del'); //Tela de deletar

    Route::get('marcar/{id}', 'TarefasController@done'); //Marcar resolvido/não

});

Route::prefix('/config')->group(function(){ 

    Route::get('/', 'Admin\ConfigController@index');
    Route::post('/', 'Admin\ConfigController@index');

    Route::get('info', 'Admin\ConfigController@info');
    Route::get('permissoes', 'Admin\ConfigController@permissoes');
    
});

Route::fallback(function(){
    return view('404');
});