@extends('layouts.master')

@section('title')
    Contact
@endsection

@section('styles')
    <link rel="stylesheet" href="{{ URL::to('src/css/form.css') }}">
@endsection

@section('content')
    @include('includes.info-box')
    <form action="" method="post" id="contact-form">
        <div class="input-group">
            <label for="author">Your Name</label>
            <input type="text" name="author" id="author" placeholder="Your Name"/>
        </div>
        <div class="input-group">
            <label for="email">Your E-mail</label>
            <input type="text" name="email" id="email" placeholder="Your E-mail"/>
        </div>
        <div class="input-group">
            <label for="message">Your Message</label>
            <textarea name="message" id="message" placeholder="Your Message" rows="10"></textarea>
        </div>
        <button type="submit" class="btn">Submit Message</button>
        <input type="hidden" name="_token" value="{{ Session::token() }}"/>
    </form>
@endsection