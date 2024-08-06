@extends('main_layouts.master')

@section('title', $post->title . ' - TDQ ')

@section('custom_css')
    <style>
        .post--body.post--content {
            color: black;
            font-family: "Source Sans Pro", sans-serif;
            font-size: 18px;
        }

        .text.capitalize {
            text-transform: capitalize !important;
        }

        .author-info,
        .post-time {
            margin: 0;
            font-size: 14px !important;
            text-align: right;
        }
    </style>
@endsection

@section('content')

    <div class="global-message info d-none"></div>

    <!-- Main Breadcrumb Start -->
    <div class="main--breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="{{ route('home') }}" class="btn-link"><i class="fa fm fa-home"></i>Trang Chủ</a></li>
                <li><a href="{{ route('categories.show', $post->category) }}"
                        class="btn-link">{{ $post->category->name }}</a></li>
                <li class="active"><span>{{ $post->title }}</span></li>
            </ul>
        </div>
    </div>
    <!-- Main Breadcrumb End -->

    <!-- Main Content Section Start -->
    <div class="main-content--section pbottom--30">
        <div class="container">
            <div class="row">
                <!-- Main Content Start -->
                <div class="main--content col-md-8" data-sticky-content="true">
                    <div class="sticky-content-inner">
                        <!-- Post Item Start -->
                        <div class="post--item post--single post--title-largest pd--30-0">
                            <div class="post--cats">
                                <ul class="nav">
                                    <li><span><i class="fa fa-folder-open-o"></i></span></li>
                                    @for ($i = 0; $i < count($post->tags); $i++)
                                        <li><a class="text capitalize"
                                                href="{{ route('tags.show', $post->tags[$i]) }}">{{ $post->tags[$i]->name }}</a>
                                        </li>
                                    @endfor
                                </ul>
                            </div>

                            <div class="post--info">
                                <ul class="nav meta">
                                    <li class="text capitalize"><a
                                            href="#">{{ $post->created_at->locale('vi')->translatedFormat('l') }}
                                            {{ $post->created_at->locale('vi')->format('d/m/Y') }}<a></li>
                                    <li><a href="#">{{ $post->author->name }}</a></li>
                                    <li><span><i class="fa fm fa-eye"></i>{{ $post->views }}</span></li>
                                    <li><a href="#"><i
                                                class="fa fm fa-comments-o"></i>{{ count($post->comments) }}</a></li>
                                </ul>

                                <div class="title">
                                    <h2 class="post_title h4">{{ $post->title }}</h2>
                                </div>
                            </div>
                            <div class="post--body post--content">
                                {!! $post->body !!}
                            </div>
                        </div>
                        <!-- Post Item End -->

                        <!-- Advertisement Start -->
                        <div class="ad--space pd--20-0-40">
                            <p class="author-info">Người viết: {{ $post->author->name }}</p>
                            <p class="post-time">Thời gian: {{ $post->created_at->locale('vi')->diffForHumans() }}</p>
                        </div>
                        <!-- Advertisement End -->

                        <!-- Post Tags Start -->
                        <div class="post--tags">
                            <ul class="nav">
                                <li><span><i class="fa fa-tags"></i> Từ khóa </span></li>
                                @for ($i = 0; $i < count($post->tags); $i++)
                                    <li><a class="text capitalize"
                                            href="{{ route('tags.show', $post->tags[$i]) }}">{{ $post->tags[$i]->name }}</a>
                                    </li>
                                @endfor
                            </ul>
                        </div>
                        <!-- Post Tags End -->

                        <!-- Post Social Start -->
                        <div class="post--social pbottom--30">
                            <span class="title"><i class="fa fa-share-alt"></i> Chia sẻ </span>

                            <!-- Social Widget Start -->
                            <div class="social--widget style--4">
                                <ul class="nav">
                                    @php
                                        $currentUrl = URL::current();
                                    @endphp
                                    <li><a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode($currentUrl) }}"><i
                                                class="fa fa-facebook"></i></a></li>
                                    <li><a href="javascript:"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="javascript:"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="javascript:"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="javascript:"><i class="fa fa-rss"></i></a></li>
                                    <li><a href="javascript:"><i class="fa fa-youtube-play"></i></a></li>
                                </ul>
                            </div>
                            <!-- Social Widget End -->
                        </div>
                        <!-- Post Social End -->


                        <!-- Comment List Start -->
                        <div class="comment--list pd--30-0">
                            <!-- Post Items Title Start -->
                            <div class="post--items-title">
                                <h2 class="h4"><span class="post_count_comment h4">{{ count($post->comments) }} </span>
                                    bình luận</h2>
                                <i class="icon fa fa-comments-o"></i>
                            </div>
                            <!-- Post Items Title End -->

                            <ul class="comment--items nav">
                                @foreach ($post->comments as $comment)
                                    @if ($comment->status == 1)
                                        <li>
                                            <!-- Comment Item Start -->
                                            <div class="comment--item clearfix">
                                                <div class="comment--img float--left">
                                                    <img style="border-radius: 50%; margin: auto; background-size: cover ;  width: 68px; height: 68px;   background-image: url({{ $comment->user->image ? asset('storage/' . $comment->user->image->path) : asset('storage/placeholders/user_placeholder.jpg') }})"
                                                        alt="">
                                                </div>
                                                <div class="comment--info">
                                                    <div class="comment--header clearfix">
                                                        <p class="name">{{ $comment->user->name }}</p>
                                                        <p class="date">
                                                            {{ $comment->created_at->locale('vi')->diffForHumans() }}</p>
                                                        <a href="javascript:;" class="reply"><i class="fa fa-flag"></i></a>
                                                    </div>
                                                    <div class="comment--content clearfix">
                                                        <p>{{ $comment->the_comment }}</p>
                                                        <p class="star">
                                                            <span class="text-left">
                                                                <a href="#" class="reply replyUser"
                                                                    data-comment-id="{{ $comment->id }}"><i
                                                                        class="icon-reply"></i> Trả lời</a>
                                                            </span>
                                                        </p>

                                                        <div style="padding-left: 20px" id="replies-{{ $comment->id }}">
                                                            @foreach ($comment->replies as $reply)
                                                                <div class="comment--content" style="display: flex;">
                                                                    <p class="name">
                                                                        <strong>{{ $reply->user->name }}</strong></p>
                                                                    <p class="date" style="margin-left: 10px ">
                                                                        {{ $reply->created_at->locale('vi')->diffForHumans() }}
                                                                    </p>
                                                                </div>
                                                                <p>{{ $reply->content }}</p>
                                                            @endforeach
                                                        </div>

                                                        <!-- Reply Form -->
                                                        <div class="reply-form" id="reply-form-{{ $comment->id }}"
                                                            style="display: none;">
                                                            <form action="{{ route('comments.reply', $comment->id) }}"
                                                                method="POST">
                                                                @csrf
                                                                <textarea style="width:100%" name="reply_content" rows="3" placeholder="Trả lời {{ $comment->user->name }}"></textarea>
                                                                <button class="btn btn-success" type="submit">Bình
                                                                    luận</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Comment Item End -->
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                        <!-- Comment List End -->

                        <!-- Comment Form Start -->
                        <div class="comment--form pd--30-0">
                            <!-- Post Items Title Start -->
                            <div class="post--items-title">
                                <h2 class="h4">Viết bình luận</h2>
                                <i class="icon fa fa-pencil-square-o"></i>
                            </div>
                            <!-- Post Items Title End -->

                            <div class="comment-respond">
                                <x-blog.message :status="'success'" />
                                @auth
                                    <!-- <form method="POST" action="{{ route('posts.add_comment', $post) }}"> -->
                                    <form onsubmit="return false;" autocomplete="off" method="POST">
                                        @csrf

                                        <div class="row form-group">
                                            <div class="col-md-12">
                                                <textarea name="the_comment" id="message" cols="30" rows="5" class="form-control"
                                                    placeholder="Đánh giá bài viết này"></textarea>
                                            </div>
                                        </div>
                                        <small style="color: red; font-size: 14px;" class="comment_error"> </small>
                                        <div class="form-group">
                                            <input id="input_comment" type="submit" value="Bình luận"
                                                class="send-comment-btn btn btn-primary">
                                        </div>
                                    </form>
                                @endauth

                                @guest
                                    <p class="h4">
                                        <a href="{{ route('login') }}">Đăng nhập</a> hoặc
                                        <a href="{{ route('register') }}">Đăng ký</a> để bình luận bài viết
                                    </p>
                                @endguest
                            </div>

                        </div>
                        <!-- Comment Form End -->

                        <!-- Post Related Start -->
                        <div class="post--related ptop--30">
                            <!-- Post Items Title Start -->
                            <div class="post--items-title" data-ajax="tab">
                                <h2 class="h4">Có thể bạn cũng thích</h2>
                            </div>
                            <!-- Post Items Title End -->

                            <!-- Post Items Start -->
                            <div class="post--items post--items-2" data-ajax-content="outer">
                                <ul class="nav row" data-ajax-content="inner">
                                    @foreach ($postTheSame as $postTheSame)
                                        <li class="col-sm-12 pbottom--30">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-3">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $postTheSame) }}" class="thumb">
                                                        <img src="{{ asset($postTheSame->image ? 'storage/' . $postTheSame->image->path : 'storage/placeholders/placeholder-image.png') }}"
                                                            alt="">
                                                    </a>

                                                    <div class="post--info">

                                                        <div class="title">
                                                            <h3 class="h4">
                                                                <a href="{{ route('posts.show', $postTheSame) }}"
                                                                    class="btn-link">{{ $postTheSame->title }}</a>
                                                            </h3>
                                                            <p style="font-size:16px">
                                                                <span>{{ $postTheSame->excerpt }}</span>
                                                            </p>
                                                        </div>

                                                        <ul style="padding-top:10px" class="nav meta ">
                                                            <li><a
                                                                    href="javascript:;">{{ $postTheSame->author->name }}</a>
                                                            </li>
                                                            <li><a
                                                                    href="javascript:;">{{ $postTheSame->created_at->locale('vi')->diffForHumans() }}</a>
                                                            </li>
                                                            <li><a href="javascript:;"><i
                                                                        class="fa fm fa-comments"></i>{{ count($postTheSame->comments) }}</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                    @endforeach

                                </ul>

                                <!-- Preloader Start -->
                                <div class="preloader bg--color-0--b" data-preloader="1">
                                    <div class="preloader--inner"></div>
                                </div>
                                <!-- Preloader End -->
                            </div>
                            <!-- Post Items End -->
                        </div>
                        <!-- Post Related End -->

                    </div>
                </div>
                <!-- Main Content End -->

                <!-- Main Sidebar Start -->
                <div class="main--sidebar col-md-4 ptop--30 pbottom--30" data-sticky-content="true">
                    <div class="sticky-content-inner">

                        <!-- Widget Start -->
                        <x-blog.side-outstanding_posts :outstanding_posts="$outstanding_posts" />
                        <!-- Widget End -->

                        <!-- Widget Start -->
                        <x-blog.side-vote />
                        <!-- Widget End -->

                        <!-- Widget Start -->
                        <x-blog.side-ad_banner />
                        <!-- Widget End -->

                    </div>
                </div>
                <!-- Main Sidebar End -->
            </div>
        </div>
    </div>
    <!-- Main Content Section End -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.querySelectorAll('.replyUser').forEach(function(replyButton) {
                replyButton.addEventListener('click', function(event) {
                    event.preventDefault();
                    var commentId = this.getAttribute('data-comment-id');
                    var replyForm = document.getElementById('reply-form-' + commentId);
                    if (replyForm.style.display === 'none' || replyForm.style.display === '') {
                        replyForm.style.display = 'block';
                    } else {
                        replyForm.style.display = 'none';
                    }
                });
            });
        });

        document.querySelectorAll('.reply-form form').forEach(function(form) {
            form.addEventListener('submit', function(event) {
                event.preventDefault();
                var commentId = this.closest('.reply-form').id.split('-')[2];
                var formData = new FormData(this);

                fetch(this.action, {
                        method: 'POST',
                        body: formData,
                        headers: {
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]')
                                .getAttribute('content')
                        }
                    })
                    .then(response => {
                        // Kiểm tra phản hồi có phải là JSON không
                        const contentType = response.headers.get('content-type');
                        if (!contentType || !contentType.includes('application/json')) {
                            throw new TypeError("Phản hồi không phải JSON");
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.success) {
                            var replyHtml = `
                        <div class="comment--content">
                            <p><strong>${data.user_name}</strong></p>
                            <p>${data.reply_content}</p>
                        </div>
                    `;
                            document.querySelector('#replies-' + commentId).insertAdjacentHTML(
                                'beforeend', replyHtml);
                            this.closest('.reply-form').style.display = 'none';
                            this.reset();
                        } else {
                            alert('Error: ' + data.message);
                        }
                    })
                    .catch(error => console.error('Error:', error));
            });
        });
    </script>
@endsection

@section('custom_js')

    <script>
        setTimeout(() => {
            $(".global-message").fadeOut();
        }, 5000)
    </script>




@endsection
