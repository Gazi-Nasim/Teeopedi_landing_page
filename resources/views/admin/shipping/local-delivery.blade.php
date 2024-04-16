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
        <div class="col-lg-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <div class="float-left">
                        <h2 class="mt-2">Local Delivery</h2>
                    </div>
                    <div class="float-right">
                        <a class="btn cus-btn  pl-2 pr-2 p-1" href="{{route('add.local-delivery')}}"><i class="fas fa-plus"></i> Add New</a>
                    </div>
                </div>
                <div class="card-body">
                    <table id="example" class="table">
                        <thead>
                            <tr>
                              <th>#</th>
                              <th>Zone Name</th>
                              <th>Fee Type</th>
                              <th>Fee Amount</th>
                              <th>Status</th>
                              <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($lshipping as $bk)
                          <tr>
                            <td>{{$bk->id}}</td>
                            <td>{{$bk->zone_name}}</td>
                            @if($bk->fee_type == 1)
                            <td>Cart total fixed amount</td>
                            @endif
                            @if($bk->fee_type == 2)
                            <td>Cart total percentage(%)</td>
                            @endif
                            @if($bk->fee_type == 3)
                            <td>Per product fixed amount</td>
                            @endif
                            @if($bk->fee_type == 4)
                            <td>Per product percentage(%)</td>
                            @endif
                            <td>{{$bk->fee_amount}}</td>
                            @if($bk->status == 1)
                            <td>Enable</td>
                            @else
                            <td>Disable</td>
                            @endif
                            <td>
                                <a title="Edit" href="{{route('edit.local-delivery',[$bk->id])}}"><span class="mdi mdi-pencil-box text-success h6 f-20"></span></a>
                                <a title="Delete" href="{{route('delete.local-delivery',[$bk->id])}}">
                                    <span class="mdi mdi-delete text-danger h6 f-20" onClick="return confirm('Are you sure you want to Destroy this data permanently?')"></span>
                                </a>
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
 @endsection
    