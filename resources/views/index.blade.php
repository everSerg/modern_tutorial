@extends('layouts.master')

@section('title')
    Trending quotes
@endsection

@section('styles')
    <link rel="stylesheet" href="{{ URL::to('src/css/font-awesome.min.css') }}">
@endsection

@section('content')
    <section class="quotes">
        <h1>Latest Quotes</h1>
        <article class="quote">
            <div class="delete"><a href="#">x</a></div>
            Quote text
            <div class="info">Created by <a href="#">Maximilian</a> on ...</div>
        </article>
        Pagination
    </section>

    <section class="edit-quote">
        <h1>Add a Quote</h1>
        <form>
            <div class="input-group">
                <label for="author">Your Name</label>
                <input type="text" name="author" id="author" placeholder="Your Name"/>
            </div>
            <div class="input-group">
                <label for="quote">Your Quote</label>
                <textarea name="quote" id="quote" placeholder="Quote"></textarea>
            </div>
            <button type="submit" class="btn">Submit Quote</button>
            <input type="hidden" name="_token" value="{{ Session::token() }}"/>
        </form>
    </section>

@endsection