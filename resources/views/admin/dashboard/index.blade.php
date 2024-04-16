@extends('admin.layouts.master')
@section('content')
    <div class="container ">
        <div class="row mb-4">
            <div class="col-lg-12">
                <p class="p-4 cus-bg text-white rounded">Welcome To @if(!empty($settings)){{$settings->site_title}}@endif Dashboard</p>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-3 col-sm-6">
            <div class="card card-mini mb-4">
                <div class="card-body b-left-color">
                <h2 class="mb-1">{{$user_count}}</h2>
                <p class="cus-txt">Users</p>
                </div>
            </div>
            </div>
            <div class="col-xl-3 col-sm-6">
            <div class="card card-mini  mb-4">
                <div class="card-body b-left-color">
                <h2 class="mb-1">{{$categories_count}}</h2>
                <p class="cus-txt">All categories</p>
                </div>
            </div>
            </div>
            <div class="col-xl-3 col-sm-6">
            <div class="card card-mini mb-4">
                <div class="card-body b-left-color">
                <h2 class="mb-1">{{$products_count}}</h2>
                <p class="cus-txt">Total Product</p>
                </div>
            </div>
            </div>
            <div class="col-xl-3 col-sm-6">
            <div class="card card-mini mb-4">
                <div class="card-body b-left-color">
                <h2 class="mb-1">{{$total_revenue}}</h2>
                <p class="cus-txt">Total Revenue</p>
                </div>
            </div>
            </div>
        </div>
    </div>
@endsection