@extends('layout.app')
@section('title', 'Ideas')

@section('content')
<div class="row">
    <div class="col-12">
        <div class="banner parralax">
            <img src="{{asset('img/'.$banner->image_path)}}" alt="banner" class="image-banner">
            <div class="banner-content">
                <h2>{{$banner->title}}</h2>
                <p>{{$banner->desc}}</p>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="sort-options">
        <select name="Sort By:" id="sort" onchange="fetchPost()">
            <option value="newest">Newest</option>
            <option value="oldest">Oldest</option>
        </select>
        <select name="Show per page" id="show-per-page" onchange="fetchPost()">
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="50">50</option>
        </select>
    </div>
    <div class="card-container">
        @foreach($posts as $post)
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="{{asset('img/'.$post->image_path)}}" loading="lazy" alt="{{$post->title}}">
                    <div class="card-body">
                        <p class="card-text"><small class="text-muted">{{$post->created_at}}</small></p>
                        <h5 class="card-title">{{$post->title}}</h5>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="pagination justify-content-center">
        {{ $posts->links() }}
    </div>
</div>
@endsection()