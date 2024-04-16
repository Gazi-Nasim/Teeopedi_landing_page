@extends('frontend.layouts.master')
@section('content')
    <div class="store-location-page mt-20 mb-20">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section-heading text-center">
                        <h4>{{ $pages_data->title }}</h4>
                    </div>
                </div>
            </div>
            {{-- @dd($pages_data->description) --}}
            <div class="tremsAndConditions-wrap">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 m-auto">
                        <div class="PageContent Rte" style="text-align:justify">
                            {!! $pages_data->description !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection