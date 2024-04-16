@extends('admin.layouts.master')
@section('content')
<div class="content-wrapper">
  @if(Session::has('success'))
    <div class="alert alert-dismissible fade show alert-success p-3" role="alert">
      <div class="alert-icon mr-2">
          <i class="fas fa-check"></i>
      </div>
      <p class="text-white mt-s">{{Session::get('success')}}</p>
      <button type="button" class="close p-3" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">×</span>
      </button>
    </div>
  @endif
  <div class="row">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card card-default">
            <div class="card-header card-header-border-bottom">
                <div class="float-left">
                    <h2 class="mt-2">All Orders</h2>
                </div>
            </div>
            <div class="card-body">
              <div class="">
                <table id="example"  class="table responsive">
                    <thead>
                        <tr>
                          <th>SL</th>
                          <th>Invoice ID</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Phone</th>
                          <th>Payment Method</th>
                          <th>Grand Total</th>
                          <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $i=1;
                        @endphp
                        @foreach ($orders as $item)
                        <tr>
                            <td>{{$i++}}</td>
                            <td>#INV-{{$item->invoice_id}}</td>
                            <td>{{$item->billing_adderss->name}}
                            </td>
                            <td>{{$item->billing_adderss->email}}</td>
                            <td>{{$item->billing_adderss->phone}}</td>
                            <td class="text-center">{{$item->payment_method}}</td>
                            <td class="text-center">{{$item->total}}</td>
                            <td>
                                <form action="{{ route('orders.delete',$item->id) }}" method="POST">
                                    @csrf
                                    <a title="View" href="{{ route('orders.details',$item->id) }}">
                                        <span class="mdi mdi-eye text-success h6 f-20"></span>
                                    </a>
                                    <button type="submit" title="Delete" onClick="return confirm('Are you sure you want to Destroy this data permanently?')">
                                        <span class="mdi mdi-delete text-danger h6 f-20" ></span>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
              </div>
            </div>
        </div>
    </div>
  </div>
</div>
@endsection