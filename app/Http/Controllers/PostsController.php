<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function create(){

        return view('posts/create');
    }
    public function store(){
        $data = request()->validate([
            'caption' => 'required',
            'image' => 'required|image',

        ]);
        $imgPath = request('image')->store('uploads', 'public'); //store('directory', 'driver')
        auth()->user()->posts()->create([
            'caption' => $data['caption'],
            'image' => $imgPath,
        ]); // sign in with authenticated/logged in user

        return redirect('/profile/'.auth()->user()->id);
    }
}
