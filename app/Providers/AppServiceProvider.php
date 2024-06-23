<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Setting;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{

    public function register()
    {
        //
    }


    public function boot()
    {
        Paginator::useBootstrap();

        $categories = Category::withCount('posts')->orderBy('posts_count', 'DESC')->take(10)->get();
        View::Share('nabbar_categories', $categories);

        $categories = Category::withCount('posts')->orderBy('posts_count', 'DESC')->take(10)->get();
        View::Share('setting', $categories);

        $setting = Setting::find(1);
        View::Share('setting', $setting);
    }
}
