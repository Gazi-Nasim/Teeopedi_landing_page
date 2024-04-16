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
                    <h2 class="mt-2">All Coupons</h2>
                </div>
                <div class="float-right">
                    <a class="btn cus-btn  pl-2 pr-2 p-1" href="{{url('/admin/coupon/add-coupon')}}"><i class="fas fa-plus"></i> Add coupon</a>
                </div>
            </div>
            <div class="card-body">
              <div class="">
                <table id="example"  class="table responsive">
                    <thead>
                        <tr>
                          <th>SL</th>
                          <th>Coupon Code</th>
                          <th>Coupon Categories</th>
                          <th>Coupon Products</th>
                          <th>Coupon Users</th>
                          <th>Coupon Type</th>
                          <th>Coupon Limit</th>
                          <th>Coupon Amount Type</th>
                          <th>Coupon Amount</th>
                          <th>Coupon Expire Date</th>
                          <th>Coupon Status</th>
                          <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                      @foreach($coupons as $coupon)
                        <?php 
                          $Coupon_Cat=App\Models\Coupon_Cat::where('coupon_id',$coupon->id)->get();
                          $Coupon_Products=App\Models\Coupon_Products::where('coupon_id',$coupon->id)->get();
                          $Coupon_Users=App\Models\Coupon_Users::where('coupon_id',$coupon->id)->get();
                        ?>
                        <tr class="even">
                            <td>{{$no++}}</td>
                            <td>{{$coupon->coupon_code}}</td>
                            <td>
                              @foreach($categories as $category)
                                @if($Coupon_Cat!=null)
                                  @foreach($Coupon_Cat as $ca)
                                    @if($category->id==$ca->cat_id)
                                      {{$category->title}}<br>
                                    @endif
                                  @endforeach
                                @endif
                              @endforeach
                            </td>
                            <td> 
                              @foreach($products as $product)
                                @if($Coupon_Products!=null)
                                  @foreach($Coupon_Products as $po)
                                    @if($product->id==$po->product_id)
                                      {{$product->title}}<br>
                                    @endif
                                  @endforeach
                                @endif
                              @endforeach
                            </td>
                            <td>
                            @foreach($users as $user)
                              @if($Coupon_Users!=null)
                                @foreach($Coupon_Users as $us)
                                  @if($user->id==$us->user_id)
                                    {{$user->email}}<br>
                                  @endif
                                @endforeach
                              @endif
                            @endforeach
                            </td>
                            <td>{{$coupon->coupon_type}}</td>
                            <td>{{$coupon->multi_value}}</td>
                            <td>{{$coupon->amount_type}}</td>
                            <td>{{$coupon->amount}}</td>
                            <td>{{$coupon->expire_date}}</td>
                            @if($coupon->status == 1)
                              <td>Enable</td>
                            @else
                              <td>Disable</td>
                            @endif
                            <td class="table-action">
                                <a href="{{route('coupon.edit',[$coupon->id])}}">
                                    <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                </a>
                                <a href="{{route('coupon.delete', $coupon->id)}}">
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
</div>
@endsection