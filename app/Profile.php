<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    protected $guarded = [];

    public function profileImage()
    {
        $path = ($this->image) ?   $this->image : 'profile/PFcWSIH1dREtvf0334eQmm3XTaTt034whFOQYXUq.png';
        return '/storage/'. $path;
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
