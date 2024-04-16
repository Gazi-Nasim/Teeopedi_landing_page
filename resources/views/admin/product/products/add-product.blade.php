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
                    <h2>Add Product</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('store-product')}}" id="add-product" method="POST" enctype="multipart/form-data">
                        @csrf
                        <h6 class="text-dark mb-3 mt-3">General</h6>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('title') is-invalid @enderror" name="title" id="title" placeholder="Enter product title" value="{{old('title')}}" maxlength="100" required>
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="title">Sku <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('sku') is-invalid @enderror" name="sku" id="sku" placeholder="Enter product sku" value="{{old('sku')}}" maxlength="100" required>
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
                                <textarea class="form-control @error('short_desc') is-invalid @enderror" name="short_desc" rows="3" id="short_desc" placeholder="Enter short description" maxlength="2000">{{old('short_desc')}}</textarea>
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
                                <textarea class="form-control @error('description') is-invalid @enderror" name="description" rows="6" id="description" placeholder="Enter product description" maxlength="4000">{{old('description')}}</textarea>
                                @error('description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="flash_title">Flash Title </label>
                                <input type="text" class="form-control @error('flash_title') is-invalid @enderror" name="flash_title" id="flash_title" placeholder="Enter flash title" value="{{old('flash_title')}}" maxlength="100" >
                                @error('flash_title')
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
                                <input type="number" class="form-control @error('regular_price') is-invalid @enderror" name="regular_price" id="regular_price" placeholder="Enter product price" min="1" maxlength="6" value="{{old('regular_price')}}"  required>
                                @error('regular_price')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="title">Max Price <span class="required-icon">*</span></label>
                                <input type="text" class="form-control @error('sale_price') is-invalid @enderror" name="sale_price" id="sale_price" placeholder="Enter sale price" value="{{old('sale_price')}}" min="1" maxlength="6" required>
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
                                <label for="featured_img">Featured Image <span class="required-icon">*</span></label>
                                <input accept= "image/*" type="file" class="form-control-file featured_img" id="featured_img" name="featured_img" required>
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
                                <input accept= "image/*" type="file" class="form-control-file dropify"  data-max-file-size-preview="2M" data-allowed-file-extensions="jpeg jpg png gif" data-max-file-size="2M" data-errors-position="outside" data-height="100" id="gallery_img" name="gallery_img[]" multiple>
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
                                        <option value="{{$cat->id}}"><span class="boldCat">{{$cat->title}}</span></option>
                                        @if($cat->children)
                                            @foreach ($cat->children->where('status',1) as $child)
                                            <option value="{{$child->id}}">  - {{$child->title}}</option>
                                            @endforeach
                                        @endif
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
                                        <option value="{{$spcat->id}}">{{$spcat->title}}</option>
                                    @endforeach
                                </select>
                                @error('special_cat_id')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <!-- related -->
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="related">Related Product </label>
                                <select class="form-control @error('related_product') is-invalid @enderror related_product" name="related_product[]" id="related_product" multiple="">
                                    @foreach($products as $product)
                                        <option value="{{$product->id}}">{{$product->title}}</option>
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
                                    <input class="form-check-input" value="1" type="radio" name="status" id="flexRadioDefaultV" checked>
                                    <label class="form-check-label" for="flexRadioDefaultV">Yes</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" value="2" name="status" id="flexRadioDefaultV2" >
                                    <label class="form-check-label" for="flexRadioDefaultV2">No</label>
                                </div>
                            </div>
                        </div>
                        <div class="product-attribute">
                            <h6 class="text-dark mb-3 mt-3">Product Attribute</h6>
                            <div id="error_msg"></div>
                            <div class="attribute_section_content sec1 mb-4">
                                <div class="form-row">
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
                                        <label for="stock_status">Stock Status</label>
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
                            <div id="attributeCard" class="dis-none"></div>
                            <div class="row">
                                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 submit">
                                    <button type="button" class="btn btn-sm  btn-success popAttribute mb-2" href=""><i class="fa fa-plus" aria-hidden="true"></i> Add More Attribute</button>
                                </div>
                            </div>
                        </div>
                        <button class="mt-4 mb-1 btn cus-btn create-btn" type="submit">Create</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

