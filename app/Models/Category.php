<?php

namespace App\Models;

use App\Models\Post;
use App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'slug', 'user_id'];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function approvedPosts()
    {
        return $this->hasMany(Post::class)
            ->where('approved', 1);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
