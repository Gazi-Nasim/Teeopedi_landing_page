@extends('frontend.layouts.master')
@push('css')
@endpush
@section('content')
<!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>dashboard</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Orders</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!--  dashboard section start -->
    <section class="dashboard-section section-b-space user-dashboard-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    @include('frontend.user.include.dashboard_menu')
                </div>
                <div class="col-lg-9">
                    <div class="faq-content tab-content" id="top-tabContent">
                        <div class="row">
                            <div class="col-12">
                                <div class="card dashboard-table mt-0">
                                    <div class="card-body table-responsive-sm">
                                        <div class="top-sec">
                                            <h3>My Orders</h3>
                                        </div>
                                        <div class="table-responsive-xl">
                                            <table class="table cart-table order-table">
                                                <thead>
                                                    <tr class="table-head">
                                                        <th scope="col">Order ID</th>
                                                        <th scope="col">Date</th>
                                                        <th scope="col">Status</th>
                                                        <th scope="col">Total</th>
                                                        <th scope="col">View</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @forelse($order_details as $order)
                                                    <tr>
                                                        <td>{{$order->invoice_id}} </td>
                                                        <td>
                                                            {{readableDate($order->created_at)}}
                                                        </td>
                                                        <td>
                                                            @if($order->status == 0)
                                                                <span class="badge rounded-pill custom-badge bg-danger text-center">Pending</span>
                                                            @elseif($order->status == 1)
                                                                <span class="badge rounded-pill custom-badge bg-info">On The Way</span>
                                                            @elseif($order->status == 2)
                                                                <span class="badge rounded-pill custom-badge bg-warning">Processing</span>
                                                            @elseif($order->status == 3)
                                                                <span class="badge rounded-pill custom-badge bg-success">Completed</span>
                                                            @elseif($order->status == 4)
                                                                <span class="badge rounded-pill custom-badge bg-secondary">Cancelled</span>
                                                            @elseif($order->status == 5)
                                                                <span class="badge rounded-pill custom-badge">Failed</span>
                                                            @else
                                                                <span class="badge rounded-pill custom-badge">None</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            <span class="theme-color fs-6">৳ {{$order->total}}</span>
                                                        </td>
                                                        <td>
                                                            <a href="{{route('user.order-details',$order->id)}}">
                                                                <i class="fa fa-eye text-theme"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    @empty
                                                    <tr>
                                                        <td colspan="5">Order list empty</td>
                                                    </tr>
                                                    @endforelse
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </section>
    <!--  dashboard section end -->
@endsection
