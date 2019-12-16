<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Http\Resources\UserResourceCollection;
use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * @param User $user
     * @return UserResource
     */
    public function show(User $user): UserResource{

        return new UserResource($user); //pulls an individual profile into a json file
    }

    /**
     * @return UserResourceCollection
     */
    public function  index():UserResourceCollection{

        return new UserResourceCollection(User::paginate());

    }

    /**
     * @param Request $request
     * @return UserResource
     */
    public  function store(Request $request){
        // create user
        $request->validate([
            'name' => 'required',
            'username' => 'required',
            'email' => 'required',
            'password' => 'required',
        ]);

        $user = User::create($request->all());
        return new UserResource($user);
    }
    public function update(User $user, Request $request): UserResource{

        $user->update($request->all());
        return new UserResource($user);
    }
}
