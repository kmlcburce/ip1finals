<?php

namespace App\Http\Controllers;

use Faker\Provider\Image;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth'); //authentication needed to make a post
    }

    public function create(){

        return view('posts/create');
    }
    public function store(){
        $data = request()->validate([
            'caption' => 'required',
            'image' => 'required|image',

        ]);

        $imgPath = request('image')->store('uploads', 'public'); //store in local db the img url
        $img = \Intervention\Image\Facades\Image::make(public_path("storage/{$imgPath}"))->fit(1200, 1200);
        $img->save();
        auth()->user()->posts()->create([
            'caption' => $data['caption'],
            'image' => $imgPath,
        ]); // sign in with authenticated/logged in user

        return redirect('/profile/'. auth()->user()->id);
    }
    public function show(\App\Post $post){
        return view("posts.show", compact('post'));
    }
}
