<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ConfigController extends Controller
{
    public function index(Request $request){

        $nome = 'Bonieky';
        $idade = 58;
        $cidade = $request->input('cidade');

        $lista = [
            ['nome'=> 'farinha', 'qt' => '2'],
            ['nome'=> 'ovo', 'qt' => '4'],
            ['nome'=> 'corante', 'qt' => '1'],
            ['nome'=> 'ingrediente especial', 'qt' => '1']
        ];

        $data = [
            'nome' => $nome,
            'idade' => $idade,
            'cidade' => $cidade,
            'lista' => $lista
        ];



        return view('admin.config', $data);
    }
    public function info(){
        echo "Configurações INFO 3";
    }
    public function permissoes(){
        echo "Configurações PERMISSÓES 3";
    }
}
