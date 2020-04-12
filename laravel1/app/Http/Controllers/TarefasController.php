<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TarefasController extends Controller
{
    public function list(){
        //dd(env('APP_NAME'));
        $list = DB::select('SELECT * FROM tarefas');// WHERE resolvido = ?', [1]);

        return view('tarefas.list', [
            'list' => $list
        ]);
    }
    
    public function add(){
        return view('tarefas.add');
    }

    public function addAction(){

    
    }
    
    public function edit(){
        return view('tarefas.edit');
    }

    public function editAction(){

    }
    
    public function del(){

    }

    public function done(){

    
    }
}
