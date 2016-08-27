@extends('layouts.master')

@section('title')
    Blog Index
@endsection

@section('content')
    @foreach($posts as $post)
        <article class="blog-post">
            <h3>{{ $post->title }}</h3>
            <span class="subtitle">{{ $post->author }} | {{ $post->created_at }}</span>
            <p>{{ $post->body }}</p>
            <a href="#">Read more</a>
        </article>

    @endforeach
    @if($posts->lastPage() > 1)
        <section class="pagination">
            @if($posts->currentPage() !== 1)
                <a href="{{ $posts->previousPageUrl() }}"> < </a>
            @endif
            @if($posts->currentPage() !== $posts->lastPage())
                <a href="{{ $posts->nextPageUrl() }}"> > </a>
            @endif
        </section>
    @endif
@endsection