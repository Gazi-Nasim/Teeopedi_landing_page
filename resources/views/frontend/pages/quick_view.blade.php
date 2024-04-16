<div class="col-lg-6 col-xs-12">
    <div class="quick-view-img"><img src="{{asset('uploads/products/images/'.$product->featured_img)}}" alt="{{$product->title}}" title="{{$product->title}}" class="img-fluid blur-up lazyload"></div>
</div>
<div class="col-lg-6 rtl-text">
    <div class="product-right">
        <h2>{{$product->title}}</h2>
        <h4><del>৳<span class="prod-sale-price">{{$product->sale_price}}</span></del></h4>
        <h3>৳<span class="prod-regular-price">{{$product->regular_price}}</span></h3>
        @if(!empty($p_color))
        <ul class="color-variant">
            <input type="hidden" class="getColor" value="{{$p_color[0]}}">
            @foreach ( $p_color as $color)
                <li data-prod-id="{{$product->id}}" data-color="{{$color}}" class="{{$loop->iteration==1 ? 'active' : ''}} setColor checkAttr" style="background-color:{{$color}};"></li>
            @endforeach
        </ul>
        @endif
        <div class="border-product">
            <h6 class="product-title">product details</h6>
            <p>{{$product->short_desc}}</p>
        </div>
        @php
            $checkAttr='';
            if(!empty($p_size) && !empty($p_color)){
                $checkAttr = App\Models\ProductAttribute::where('product_id', $product->id)->where('attr_size', intval($p_size[0]))->where('attr_color_val', '=', $p_color[0])->first();
            }
        @endphp
        <div class="product-description border-product">
            @if(!empty($p_size))
            <div class="size-box">
                <ul>
                    <input type="hidden" class="getSize" value="{{$p_size[0]}}">
                    @foreach ($p_size as $size)
                        <li data-prod-id="{{$product->id}}" class="setSize {{$loop->iteration==1 ? 'active' : ''}} checkAttr" data-size="{{$size}}"><a href="javascript:void(0)">{{$size}}</a></li>
                    @endforeach
                </ul>
            </div>
            @endif
            <h6 class="product-title">quantity</h6>
            <div class="qty-box">
                <div class="input-group quan-coun">
                    <span class="input-group-prepend">
                        <button type="button" class="quantity-btn qty-count btn quantity-left-minus qty-count--minus">
                            <i class="ti-minus"></i>
                        </button>
                    </span>
                    <input type="text" class="form-control input-number quantity-input product-qty" id="product_qty" min="1" value="1" step="1" max="100" name="quantity">
                    <span class="input-group-prepend">
                        <button type="button" class="quantity-btn qty-count btn quantity-right-plus qty-count--add qty-count--add">
                            <i class="ti-plus"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
        <div class="product-buttons">
            <!--<a href="#" class="btn btn-solid">add to cart</a> -->
             @if(!empty($checkAttr) && $checkAttr->count() > 0)
             <a href="javascript:void(0)" id="buynow" data-prod-id="{{$product->id}}" class="buy-now btn btn-solid hover-solid btn-animation {{$checkAttr->status == 2 ? 'd-none':''}}">buy now</a>
                <a href="" id="cartEffect" data-prod-id="{{$product->id}}" class="add-to-cart btn btn-solid hover-solid btn-animation {{$checkAttr->status == 2 ? 'd-none':''}}">add to cart</a>
                <span class="stock-out {{$checkAttr->status == 2 ? '':'d-none'}} text-danger fw-bold">Out of stock</span>
            @else
                <a href="javascript:void(0)" id="buynow" data-prod-id="{{$product->id}}" class="buy-now btn btn-solid hover-solid btn-animation">buy now</a>
                <a href="javascript:void(0)" id="cartEffect" data-prod-id="{{$product->id}}" class="add-to-cart btn btn-solid hover-solid btn-animation">add to cart</a>
            @endif
        <!--<a href="#" class="btn btn-solid">view detail</a>-->
        </div>
    </div>
</div>
<script>
    console.log('heello');
</script>