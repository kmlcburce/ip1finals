<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\User;
use Illuminate\Http\Request;

class ProfilesController extends Controller
{
    public function index(User $user)
    {

        return view('profiles/home', compact('user'));
    }
    public function edit(User $user){
        $this->authorize('update', $user->profile);
        return view('profiles.edit', compact('user'));
    }
    public function update(User $user){
        $this->authorize('update', $user->profile);
        $data = \request()->validate([
            'title'=>'required',
            'description'=>'required',
            'url'=>'url',
            'image'=>'',
        ]);

        if(\request('image')){
            $imgPath = request('image')->store('profile', 'public'); //store in local db the img url
            $img = \Intervention\Image\Facades\Image::make(public_path("storage/{$imgPath}"))->fit(1000, 1000);
            $img->save();
            $imgArr = ['image'=> $imgPath];
        }

        auth()->user()->profile->update(array_merge(
            $data, $imgArr ?? []

        ));
        return redirect("/profile/{$user->id}");
    }


}
