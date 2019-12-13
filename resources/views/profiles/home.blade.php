@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-3 pr-5">
            <img src="https://www.nationalgeographic.com/content/dam/news/2016/05/29/gorilladeath/01-gorilla-harambe-death.jpg" style="max-height: 250px; max-width: 250px;" class="rounded-circle">
        </div>
        <div class="col-9 pt-5">
            <div class="d-flex justify-content-between align align-items-baseline">
                <h1>{{ $user->username }}</h1>
                <a href="#">Add post</a>
            </div>
            <div class="d-flex">
                <div class="pr-5"><strong>100</strong> posts</div>
                <div class="pr-5"><strong>120k</strong> followers</div>
                <div class="pr-5"><strong>1</strong> following</div>
            </div>
            <div class="pt-4 font-weight-bold" >{{ $user->profile->title }}</div>
            <div class="pb-2">{{ $user->profile->description }}</div>
            <div><a href="#">{{ $user->profile->url  }}</a></div>
        </div>
    </div>
    <div class="row pt-5">
        <div class="col-4">
            <img src="https://cdn.vox-cdn.com/thumbor/4enUu1Jgz_MBSOOuc3I7vNlca_k=/0x0:1080x1080/1200x800/filters:focal(454x454:626x626)/cdn.vox-cdn.com/uploads/chorus_image/image/50423583/13745048_316106668724048_1180140140_n.0.jpg" class="w-100">
        </div>
        <div class="col-4">
            <img src="https://cdn-www.konbini.com/en/files/2016/08/27-harambe-gorilla-heaven.w710.h473.2x.jpg" class="w-100">
        </div>
        <div class="col-4">
            <img src="https://miro.medium.com/max/2592/1*1OzEq7vt0Iyz7lKJXBhG5w.jpeg" class="w-100">
        </div>
    </div>
</div>
@endsection
