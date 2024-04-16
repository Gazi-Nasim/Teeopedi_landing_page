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
                    <h2>Offer List</h2>
                </div>
                <div class="card-body">
                    <table id="example" class="table">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Image</th>
                                <th>Title</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($offers as $offer)
                                <tr class="even">
                                    <td>{{$no++}}</td>
                                    <td><img class="img-fluid" src="{{asset('uploads/offers/images/'.$offer->img)}}" width="50" height="50"></td>
                                    <td>{{$offer->title}}</td>
                                    <td class="text-center">
                                        @if($offer->status == 1)
                                            <i title="Active" class="fas fa-check text-success"></i>
                                        @else
                                            <i title="Inactive" class="fas fa-times text-danger"></i>
                                        @endif
                                    </td>
                                    <td class="table-action">
                                        <a href="{{route('offer.edit',[$offer->id])}}">
                                            <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                        </a>
                                        <a href="{{route('offer.delete',[$offer->id])}}">
                                            <span class="mdi mdi-delete text-danger h6 f-20" onClick="return confirm('Are you sure you want to delete this data permanently?')"></span>
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
