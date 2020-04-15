@extends('layouts.admin')

@section('title', 'Login')
    
@section('content')

    @if(session('warning'))
        @alert
            {{session('warning')}}
        @endalert
    @endif

    <form method="POST">
        @csrf
        <input type="email" name="email" placeholder="Digite um e-mail" /><br/>
        <input type="password" name="password" placeholder="Digite uma senha" /><br/>

        @if($tries >= 3)
            Você não pode tentar mais que 3 vezes.
        @else
            <input type="submit" value="Entrar" /><br/>
        @endif
    </form>
    Tentativas: {{$tries}}
@endsection