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
        <div class="col-lg-12 col-md-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Edit Product</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('product.update', $product->id)}}" id="add-product" method="POST" enctype="multipart/form-data">
                        @csrf
                        <h6 class="text-dark mb-3 mt-3">General</h6>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('title') is-invalid @enderror" name="title" id="title" placeholder="Enter product title" value="{{$product->title ?? old('title')}}" maxlength="100" required>
                               <input type="hidden" value="{{$product->id}}" id="product_id">
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="title">Sku <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('sku') is-invalid @enderror" name="sku" id="sku" placeholder="Enter product sku" value="{{ $product->sku ?? old('sku')}}" maxlength="100" required>
                                @error('sku')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="short_desc">Short Description</label>
                                <textarea class="form-control @error('short_desc') is-invalid @enderror" name="short_desc" rows="3" id="short_desc" placeholder="Enter short description" maxlength="2000">{{$product->short_desc ?? old('short_desc')}}</textarea>
                                @error('short_desc')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="description">Description</label>
                                <textarea class="form-control @error('description') is-invalid @enderror" name="description" rows="6" id="description" placeholder="Enter product description" maxlength="4000">@if(!empty($product->description)){!!$product->description!!}@else{{old('description')}}@endif</textarea>
                                @error('description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <h6 class="text-dark mb-3 mt-3">Price</h6>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="title">Min Price <span class="required-icon">*</span></label>
                                <input type="number" autofocus class="form-control @error('regular_price') is-invalid @enderror" name="regular_price" id="regular_price" placeholder="Enter regular price" min="1" maxlength="6" value="{{ $product->regular_price ?? old('regular_price')}}"  required>
                                @error('regular_price')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="title">Max Price <span class="required-icon">*</span></label>
                                <input type="text" class="form-control @error('sale_price') is-invalid @enderror" name="sale_price" id="sale_price" placeholder="Enter sale price" value="{{  $product->sale_price ?? old('sale_price')}}" min="1" maxlength="6" required>
                                @error('sale_price')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <!-- images -->
                        <h6 class="text-dark mb-3 mt-3">Images</h6>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="featured_img">Featured Image <span class="required-icon">*</span>
                                <input accept= "image/*" type="hidden" name="hidden_image" value="{{$product->featured_img}}">
                                @if($product->featured_img)
                                    <img src="{{asset('uploads/products/images/'.$product->featured_img)}}" alt="{{$product->title}}" width="80"> 
                                @endif
                                </label>
                                <input accept= "image/*" type="file" class="form-control-file featured_img" id="featured_img" name="featured_img">
                                @error('featured_img')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="gallery_img">Gallery Images</label>
                                <div id="success-message"></div>
                                <div class="row">
                                    @if(!empty($gallery_images))
                                        @foreach($gallery_images as $gal_images)
                                            <div class="col-lg-2 gallery_id">
                                                <div class="mb-2">
                                                    <div class="upload-wrap pt-1">
                                                        <div class="upload-images" style="display:inline-block; padding-right:15px;">
                                                            <img alt="Gallery Image" src="{{asset('uploads/products/images/'.$gal_images)}}" width='100'>
                                                            <a class="delete close" id="deleteGal"  data-img="{{$gal_images}}" data-id="{{$product->id}}" href="#"> <i style="color:red;font-size:14px;position:absolute;" class="fas fa-times-circle"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                 <!-- gallery image delete modal -->
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                                <input accept= "image/*" type="file" class="form-control-file dropify" data-max-file-size-preview="2M" data-allowed-file-extensions="jpeg jpg png gif" data-max-file-size="2M" data-errors-position="outside" data-height="100" id="gallery_img" name="gallery_img[]" multiple>
                                @error('gallery_img')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <!-- category -->
                        <h6 class="text-dark mb-3 mt-3">Category</h6>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="category">Category <span class="required-icon">*</span> </label>
                                <select class="form-control @error('category') is-invalid @enderror category" name="category[]" id="category" required multiple="">
                                    @foreach($category as $cat)
                                        <option value="{{$cat->id}}" @if(in_array($cat->id, $selected_cat_id)) selected @endif>{{$cat->title}}</option>
                                        @foreach ($cat->children as $child)
                                            <option value="{{$child->id}}" @if(in_array($child->id, $selected_cat_id)) selected @endif>  - {{$child->title}}</option>
                                        @endforeach
                                    @endforeach
                                </select>
                                @error('category')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="special_cat">Special Category </label>
                                <select class="form-control @error('special_cat_id') is-invalid @enderror special_cat_id" name="special_cat_id[]" id="special_cat_id" multiple="">
                                    @foreach($special_category as $spcat)
                                        <option value="{{$spcat->id}}" @foreach($special_cat_selected as $selected)@if($selected == $spcat->id) selected @endif @endforeach>{{$spcat->title}}</option>
                                    @endforeach
                                </select>
                                @error('special_cat_id')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="related">Related Product </label>
                                <select class="form-control @error('related_product') is-invalid @enderror related_product" name="related_product[]" id="related_product" multiple="">
                                    @foreach($all_products as $prod)
                                        <option value="{{$prod->id}}" @foreach($related_product as $selected)@if($selected == $prod->id) selected @endif @endforeach>{{$prod->title}}</option>
                                    @endforeach
                                </select>
                                @error('related_product')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12">
                                <div class="form-check form-check-inline">
                                    <label for="">Product Status</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" value="1" type="radio" name="status" id="flexRadioDefaultV" {{$product->status==1 ?'checked':''}}>
                                    <label class="form-check-label" for="flexRadioDefaultV">Yes</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" value="2" name="status" id="flexRadioDefaultV2" {{$product->status==2 ?'checked':''}}>
                                    <label class="form-check-label" for="flexRadioDefaultV2">No</label>
                                </div>
                            </div>
                        </div>
                        <h6 class="text-dark mb-3 mt-3">Product Attribute</h6>
                        @if(count($attributes) > 0)
                            @foreach($attributes as $key => $attr)
                                <div class="attribute_id">
                                    <div class="row mt-2">
                                        <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12">
                                        <div class="Experience-history mb-4">
                                            <span>New Attribute {{$loop->iteration }}
                                            <button type="button" data-attr-id="{{$attr->id}}" class="remove_btn text-danger rm-attribute-btn"> &nbsp;<i style="font-size:13px;" class="fa fa-trash"></i></button>
                                            </span>
                                        </div>
                                        </div>
                                    </div>
                                    <div class="form-row row-count mb-4" id="row-count">
                                        <div class="col-md-2 mb-3">
                                        <label for="">Size Attribute</label>
                                        <input type="text" class="form-control @error('size_attribute') is-invalid @enderror" name="size_attribute[]" id="size_attribute" placeholder="Enter value" value="{{$attr->attr_size}}" maxlength="100">
                                        @error('size_attribute')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <label for="color_attribute">Color Attribute</label>
                                        <input type="text" class="form-control @error('color_attribute') is-invalid @enderror" name="color_attribute[]" id="color_attribute" placeholder="Enter value" value="{{$attr->attr_color}}" maxlength="100">
                                        @error('color_attribute')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <label class="" for="color_value">Choose Color</label>  <br>
                                        <input type="color" class="@error('color_value') is-invalid @enderror color_value" name="color_value[]" id="color_value" value="{{$attr->attr_color_val}}">
                                        @error('color_value')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-3">
                                        <label for="stock_price">Price</label>
                                        <input type="number" min='1' placeholder="Enter price for the stock" class="form-control" name="stock_price[]" id="stock_price" value="{{$attr->attr_price}}" maxlength="6">
                                        @error('stock_price')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-3">
                                        <label for="stock_status">Stock Status</label>
                                        <select class="form-control @error('stock_status') is-invalid @enderror stock_status" name="stock_status[]" id="stock_status">
                                            <option value="1" {{$attr->status==1 ? 'selected':''}}>In Stock</option>
                                            <option value="2"  {{$attr->status==2 ? 'selected':''}}>Out Of Stock</option>
                                        </select>
                                        @error('stock_status')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    </div>
                                </div>
                            @endforeach
                        @else
                            <div id="error_msg"></div>
                            <div class="attribute_section_content sec1">
                               <div class="form-row mb-4">
                                    <div class="col-md-2 mb-3">
                                        <label for="">Size Attribute</label>
                                        <input type="text" class="form-control @error('size_attribute') is-invalid @enderror" name="size_attribute[]" id="size_attribute" placeholder="Enter value" value="" maxlength="100">
                                        @error('size_attribute')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <label for="color_attribute">Color Attribute</label>
                                        <input type="text" class="form-control @error('color_attribute') is-invalid @enderror" name="color_attribute[]" id="color_attribute" placeholder="Enter value" value="" maxlength="100">
                                        @error('color_attribute')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <label class="" for="color_value">Choose Color</label>  <br>
                                        <input type="color" class="@error('color_value') is-invalid @enderror color_value" name="color_value[]" id="color_value" value="">
                                        @error('color_value')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-3">
                                        <label for="stock_price">Price</label>
                                        <input type="number" min='1' placeholder="Enter price for the stock" class="form-control" name="stock_price[]" id="stock_price" value="" maxlength="6">
                                        @error('stock_price')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-3">
                                        <label for="stock_price">Stock Status</label>
                                        <select class="form-control @error('stock_status') is-invalid @enderror stock_status" name="stock_status[]" id="stock_status">
                                            <option value="1">In Stock</option>
                                            <option value="2">Out Of Stock</option>
                                        </select>
                                        @error('stock_status')
                                        <span class="text-danger" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        @endif
                        <div id="attributeCard" class="dis-none"></div>
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 submit">
                                <button type="button" class="btn btn-sm  btn-success popAttribute mb-2" href=""><i class="fa fa-plus" aria-hidden="true"></i> Add More Attribute</button>
                            </div>
                        </div>
                        <button class="mt-4 mb-1 btn cus-btn create-btn" type="submit">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
<script>
var delGalImg  = '';
$(document).on('click', '.delete', function(){
  delGalImgID = $(this).data("id");
  delGalImg = $(this).data("img");
  $('#deleteGalleryModal').modal('show');
});
$(document).on("click","#deleteGal",function(e){
    event.preventDefault();
    var id = delGalImgID;
    var img = delGalImg;
    var token = "{{ csrf_token() }}";
    if(!confirm("Do you really want to do this?")) {
       return false;
     }
     $(this).closest('.gallery_id').remove();
        $.ajax({
        url: '/admin/products/delete-gallery-img',
        type: "POST",
        data:{
                _token: token,
                id:id,
                img:img,
            },
        success:function(response){
            console.log(response)
            if(response) {
                console.log(response)
                $('#success-message').html('<div class="alert alert-dismissible fade show alert-success p-3" role="alert"><div class="alert-icon mr-2"><i class="fas fa-check"></i> </div><p class="text-white mt-s">Image Deleted Successfully</p><button type="button" class="close p-3" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button></div>').fadeIn().delay(3000).fadeOut('fast'); 
                $('#deleteGalleryModal').modal('hide');
            }
        },
        });
});
$('.rm-attribute-btn').on('click', function(e){
    e.preventDefault();
    let id =  $(this).attr('data-attr-id');
    this.closest('.attribute_id').remove();
});
</script>
@endsection

