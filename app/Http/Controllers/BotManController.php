<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Product;
use BotMan\BotMan\Messages\Incoming\Answer;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BotManController extends Controller
{
    /**
     * Place your BotMan logic here.
     */
    public function handle()
    {
        $botman = app('botman');

        $botman->hears('{message}', function ($botman, $message) {
            $message = Str::slug($message);
            switch (true) {
                case str_contains($message, 'toi-muon-xem-tin-tuc-moi-nhat'):
                    $this->askNewest($botman);
                    break;
                case str_contains($message, 'toi-muon-tra-cuu-tin-tuc'):
                    $this->askSearch($botman);
                    break;
                case str_contains($message, 'tin-tuc-nao-dang-hot'):
                    $this->askTop($botman);
                    break;
                default:
                    $botman->reply('Hãy cho tôi biết bạn cần gì?
                    <br/>  Tôi muốn xem tin tức mới nhất
                    <br/>  Tôi muốn tra cứu tin tức
                    <br/>  Tin tức nào đang hot
                    ');
                    break;
            }
        });

        $botman->listen();
    }

    public function askNewest($botman)
    {
        $posts = Post::orderByDesc('id')
            ->limit(5)
            ->get();
        if ($posts->count() > 0) {
            $botman->reply('Dưới đây là top 5 tin tức mới nhất');
            foreach ($posts as $post) {
                $botman->reply('<a target="_blank" href=' . route('posts.show', $post) . '>' . $post->slug . '</a></br>
                        <img width="100%" height="100%" src=' . asset($post->image ?
                    'storage/' . $post->image->path : 'storage/placeholders/placeholder-image.png') . ' />');
            }
        } else {
            $botman->reply('Không có tin tức nào!');
        }
    }


    public function askTop($botman)
    {
        $posts = Post::orderBy('views', 'DESC')
            ->limit(5)
            ->get();
        if ($posts->count() > 0) {
            $botman->reply('Dưới đây là top 5 tin tức hot nhất');
            foreach ($posts as $post) {
                $botman->reply('<a target="_blank" href=' . route('posts.show', $post) . '>' . $post->slug . '</a></br>
                        <img width="100%" height="100%" src=' . asset($post->image ?
                    'storage/' . $post->image->path : 'storage/placeholders/placeholder-image.png') . ' />');
            }
        } else {
            $botman->reply('Không có tin tức nào!');
        }
    }

    public function askSearch($botman)
    {
        $botman->ask('Bạn muốn tra cứu tin tức gì? Hãy nhập từ khóa', function (Answer $answer, $botman) {
            $name = Str::slug($answer->getText());
            $posts = Post::orderBy('views', 'DESC')
                ->where('slug', 'like', "%$name%")
                ->limit(5)
                ->get();
            if ($posts->count() > 0) {
                $this->say('Dưới đây là các tin tức bạn cần tìm');
                foreach ($posts as $post) {
                    $this->say('<a target="_blank" href=' . route('posts.show', $post) . '>' . $post->slug . '</a></br>
                        <img width="100%" height="100%" src=' . asset($post->image ?
                        'storage/' . $post->image->path : 'storage/placeholders/placeholder-image.png') . ' />');
                }
            } else {
                $this->say('Không có tin tức nào!');
            }
        });
    }
}
