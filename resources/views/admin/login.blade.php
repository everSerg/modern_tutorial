@extends('layouts.master')

@section('content')
<style>
    .input-group label{
        text-align: left;
    }
</style>
    <form action="" method="post">
    <div class="input-group">
        <label for="name">Your Name</label>
        <input type="text" name="name" id="name" placeholder="Your Name"/>
    </div>
    <div class="input-group">
        <label for="password">Your Password</label>
        <input type="password" name="password" id="password" placeholder="Your Password"/>
    </div>
    <button type="submit">Submit</button>
</form>
@endsection