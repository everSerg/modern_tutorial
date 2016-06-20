@extends('layouts.master')

@section('title')
    some title
@endsection

@section('content')
    <div class="centered">
        <a href="{{ route('niceaction', ['action' => 'greet']) }}">Greet</a>
        <a href="{{ route('niceaction', ['action' => 'hug']) }}">Hug</a>
        <a href="{{ route('niceaction', ['action' => 'kiss']) }}">Kiss</a>
        <br/>
        <br/>
        @if(count($errors)>0)
            <div>
                <ul>
                    @foreach($errors->all() as $error)
                        {{ $error }}
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="{{ route('benice') }}" method="post">
            <label for="select-action">I want to ...</label>
            <select id="select-action" name="action">
                <option value="greet">Greet</option>
                <option value="hug">Hug</option>
                <option value="kiss">Kiss</option>
            </select>
            <input type="text" name="name" />
            <button type="submit">Do a nice action!</button>
            <input type="hidden" value="{{ Session::token() }}" name="_token"/>
        </form>

        <!--
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Phasellus hendrerit ultrices risus a tempor. In a mauris orci.
            Fusce sit amet lobortis ipsum. Vestibulum ante ipsum primis in
            faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse
            eleifend felis facilisis leo luctus, id tincidunt nisl varius.
            Vivamus blandit massa vel justo ultrices euismod. Aenean mollis mi lorem,
            ut molestie magna dapibus euismod. Vivamus blandit vulputate mi ac pretium.
            Proin neque tellus, facilisis ac metus non, commodo tempor sem.
        </p>
        <ul>
            @for($i = 0; $i < 5; $i++)
                @if ($i % 2 === 0)
                    <li>Iteration {{ $i + 1 }}</li>
                @endif

            @endfor
        </ul>
        -->
    </div>


@endsection