@extends('admin.layouts.master')
@section('content')
<div class="content-wrapper">
    @if(Session::has('success'))
    <div class="alert alert-dismissible fade show alert-success p-3" role="alert">
        <p class="text-white mt-s"><i class="fas fa-check-circle"></i> {{Session::get('success')}}</p>
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
                        <h2 class="mt-2">Product List</h2>
                    </div>
                    <div class="float-right">
                        <a class="btn cus-btn pl-2 pr-2 p-1" href="{{url('/admin/products/add-product')}}"><i class="fas fa-plus"></i> Add product</a>
                    </div>
                </div>
                <div class="card-body">
                    <table id="example" class="table emm_datable responsive">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Feature Image</th>
                                <th>Title</th>
                                <th>Sku</th>
                                <th>Price</th>
                                <th>Landing Page</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($products as $product)
                            <tr class="even">
                                <td>{{$no++}}</td>
                                <td><img class="img-fluid" src="{{asset('uploads/products/images/'.$product->featured_img)}}" width="50" height="50"></td>
                                <td title="{{$product->title}}">{{\Illuminate\Support\Str::limit($product->title,40,$end='...')}}</td>
                                <td>{{$product->sku}}</td>
                                <td>{{$product->regular_price}}</td>
                                <td>
                                    @if($product->landing_page=='yes')
                                    <a href="{{route('landing_page',$product->slug)}}" target="_blank" class="btn btn-xs btn-primary">Visit</a>
                                    @endif
                                    <a href="{{route('landing.index',$product->id)}}" class="btn btn-xs btn-success">Manage</a>
                                </td>
                                <td class="table-action">
                                    <a title="Edit" href="{{route('product.edit',[$product->id])}}">
                                        <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                    </a>
                                    <a title="Delete" onClick="return confirm('Are you sure you want to Destroy this data permanently?')" href="{{route('product.delete',[$product->id])}}">
                                        <span class="mdi mdi-delete text-danger h6 f-20"></span>
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