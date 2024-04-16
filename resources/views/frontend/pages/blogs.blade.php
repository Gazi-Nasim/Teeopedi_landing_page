@extends('frontend.layouts.master')

@section('content')
    <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>blog</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active">blog</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!-- section start -->
    <section class="section-b-space blog-page ratio2_3">
        <div class="container">
            <div class="row">
                <div class="col-10 mx-auto">
                    @forelse($blogs as $blog)
                    <div class="row blog-media">
                        <div class="col-xl-6">
                            <div class="blog-left">
                                <a href="{{route('blog-details',$blog->slug)}}"><img src="{{asset('uploads/blogs/images/'.$blog->image)}}"
                                        class="img-fluid blur-up lazyload bg-img" alt="{{$blog->title}}" title="{{$blog->title}}"></a>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="blog-right">
                                <div>
                                    <h6>{{ date('j F Y', strtotime($blog->created_at)) }}</h6> <a href="{{route('blog-details',$blog->slug)}}">
                                        <h4>{{$blog->title}}</h4>
                                    </a>
                                    <ul class="post-social">
                                        <li>Posted By : {{$blog->author}}</li>
                                        {{-- <li><i class="fa fa-heart"></i> 5 Hits</li>
                                        <li><i class="fa fa-comments"></i> 10 Comment</li> --}}
                                    </ul>
                                    <p>{{$blog->short_desc}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    @empty
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <strong>No Blog Found</strong>
                    </div>
                    @endforelse
                </div>
            </div>
        </div>
    </section>
    <!-- Section ends -->
@endsection