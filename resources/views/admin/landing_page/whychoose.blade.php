
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
                        <h2 class="mt-2">Landing Page for {{$product->title}}</h2>
                    </div>
                </div>
                <div class="card-body">
                    @if($product->landing_page=='no')
                    <a href="{{route('landing.activate',$product->id)}}" class="btn btn-sm btn-warning">Activate Landing page</a>
                    @else
                    <a href="{{route('landing.index',$product->id)}}" class="btn btn-sm btn-info">Header and Images</a>
                    <a href="{{route('landing.advantage',$product->id)}}" class="btn btn-sm btn-success">Advantages of the product</a>
                    <a href="{{route('landing.policy',$product->id)}}" class="btn btn-sm btn-warning">Policy</a>
                    <a href="{{route('landing.bullets',$product->id)}}" class="btn btn-sm btn-primary">Bullet Points</a>
                    <a href="{{route('landing.whychoose',$product->id)}}" class="btn btn-sm btn-danger">Why choose the product</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <div class="float-left">
                        <h2 class="mt-2">Why choose the product</h2>
                    </div>
                    <div class="card-title font-weight-bold mb-0 float-right">
                        <div class="input-group">
                            <input style="width:40px;" type="text" id="add_text" required class="form-control form-control-sm add_text" value="1">
                            <span class="input-group-btn"><button class="btn btn-info btn-sm add_more" type="button">Add</button></span>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{route('landing.store_whychoose',$product->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row table-responsive">
                            <table role="presentation" class="table table-sm table-striped table-bordered m-0">
                                <thead>
                                    <tr>
                                        <th>Details</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
            
                                <tbody class="dives">
                                    <tr>
                                        <td>
                                            <div class="">
                                                <textarea name="details[]" class="form-control" id="details" autofocus="" maxlength="350" cols="30" rows="1" required value=""></textarea>
                                                @error('details')
                                                <span style="color: red">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-danger btn-sm remove"><i class="fas fa-trash-alt"></i>Delete</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="py-1 clearfix text-white">
                            <div class="font-weight-bold mb-0 float-right">
                                <div class="input-group">
                                    <span class="input-group-btn"><button class="mb-1 btn cus-btn btn-primary align-right" type="submit">Save</button></span>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="card-body">
                <div class="form-row table-responsive">
                    <table role="presentation" class="table table-sm table-striped table-bordered m-0">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Details</th>
                                <th>Action</th>
                            </tr>
                        </thead>
        
                        <tbody>
                            @foreach($list as $dta)
                            <tr>
                                <td>{{$loop->index+1}}</td>
                                <td>{{$dta->details}}</td>
                                <td>
                                    <form action="{{route('landing.delete_whychoose',$dta->id)}}" method="POST">
                                        @method('Delete')
                                        @csrf
                                        <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i>Delete</button>
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

@endsection
@section('js')
<script>
    $(document).on("click", ".add_more", function() {

        var row_more = `<tr>
                            <td>
                                <div class="">
                                    <textarea name="details[]" class="form-control" id="details" autofocus="" maxlength="350" cols="30" rows="1" required value="">{{ ( old('details') ) }}</textarea>
                                    @error('details')
                                    <span style="color: red">{{ $message }}</span>
                                    @enderror
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn btn-danger btn-sm remove"><i class="fas fa-trash-alt"></i>Delete</button>
                            </td>
                        </tr>`
        var length = $("#add_text").val();
        for (i = 1; i <= length; i++) {
            $(row_more).appendTo('.dives');
        }
    });
    $(document).on("click", ".remove", function() {
        $(this).parent().parent().remove("tr");
    });
</script>
@endsection