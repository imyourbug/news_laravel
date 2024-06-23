<?php

namespace App\Models;

use App\Models\Category;
use App\Models\Comment;

use App\Models\Image;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = ['title','slug', 'excerpt', 'body', 'user_id','category_id', 'approved'];

    public function author() {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function tags() {
        return $this->belongsToMany(Tag::class);
    }

    public function comments() {
        return $this->hasMany(Comment::class);
    }

    public function image() {
        return $this->morphOne(Image::class, 'imageable');
    }

    // scope functions
    public function scopeApproved($query){
        return $query->where('approved', 1);
    }

}
