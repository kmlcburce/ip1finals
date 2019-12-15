@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-3 pr-5">
            <img src="{{$user->profile->profileImage()}}" style="max-height: 250px; max-width: 250px;" class="rounded-circle w-100">
        </div>
        <div class="col-9 pt-5">
            <div class="d-flex justify-content-between align align-items-baseline">
                <div class="d-flex align-items-center pb-2">
                    <div class="h4">{{ $user->username }}</div>
                    <button class="btn btn-primary ml-3">Follow</button>
                </div>

                @can('update', $user->profile)
                    <a href="/p/create">Add post</a>
                @endcan

            </div>

            @can('update', $user->profile)
                <a href="/profile/{{$user->id}}/edit">Edit profile</a>
                @endcan

            <div class="d-flex">
                <div class="pr-5"><strong>{{ $user->posts->count() }}</strong> posts</div>
                <div class="pr-5"><strong>120k</strong> followers</div>
                <div class="pr-5"><strong>1</strong> following</div>
            </div>
            <div class="pt-4 font-weight-bold" >{{ $user->profile->title }}</div>
            <div class="pb-2">{{ $user->profile->description }}</div>
            <div><a href="#">{{ $user->profile->url  }}</a></div>
        </div>
    </div>
    <div class="row pt-5">
        @foreach($user->posts as $post)
            <div class="col-4 pb-4">
                <a href="/p/{{$post->id}}">
                    <img src="/storage/{{ $post->image }}" class="w-100">
                </a>
            </div>
        @endforeach


    </div>
</div>
@endsection
