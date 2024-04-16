<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no" />
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <meta name="googlebot-news" content="noindex, nofollow">
  <meta name="msnbot" content="noindex, nofollow">
  <title>	@if(!empty($settings)){{$settings->site_title}}@endif :: @if(Request::url() != url('/') ){{$title ?? ''}} @endif</title>
  <link type="image/x-icon" rel="icon" href="{{asset('assets/images/common/logo.png')}}">
  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet"/>
  <link href="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css" rel="stylesheet" />
  <!-- PLUGINS CSS STYLE -->
  <link href="{{asset('/back/plugins/toaster/toastr.min.css')}}" rel="stylesheet" />
  <link href="{{asset('back/plugins/nprogress/nprogress.css')}}" rel="stylesheet" />
  <link href="{{asset('back/plugins/flag-icons/css/flag-icon.min.css')}}" rel="stylesheet"/>
  <link href="{{asset('back/plugins/jvectormap/jquery-jvectormap-2.0.3.css')}}" rel="stylesheet" />
  <link href="{{asset('back/plugins/ladda/ladda.min.css')}}" rel="stylesheet" />
  <link href="{{asset('back/plugins/select2/css/select2.min.css')}}" rel="stylesheet" />
  <link href="{{asset('back/plugins/daterangepicker/daterangepicker.css')}}" rel="stylesheet" />

  <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" />
  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="{{asset('back/css/sleek.css')}}" />
  <link rel="stylesheet" href="{{asset('back/css/custom.css')}}" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <!-- FAVICON -->
  <script src="{{asset('back/plugins/nprogress/nprogress.js')}}"></script>
  @stack('css')
</head>

<body class="sidebar-fixed sidebar-dark header-light header-fixed" id="body">
  <div class="mobile-sticky-body-overlay"></div>
  <div class="wrapper">
    <!-- LEFT SIDEBAR WITH FOOTER -->
    @include('admin.layouts.sidebar-admin')

    <div class="page-wrapper">
      <!-- Header -->
      @include('admin.layouts.navbar')

      <div class="content-wrapper">
        <div class="content">
          @yield('content')
        </div>
      </div>

      @include('admin.layouts.footer')
    </div>
  </div>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCn8TFXGg17HAUcNpkwtxxyT9Io9B_NcM" defer></script>
<script src="{{asset('back/plugins/jquery/jquery.min.js')}}"></script>
<script src="{{asset('back/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('back/plugins/toaster/toastr.min.js')}}"></script>
<script src="{{asset('back/plugins/slimscrollbar/jquery.slimscroll.min.js')}}"></script>
<script src="{{asset('back/plugins/charts/Chart.min.js')}}"></script>
<script src="{{asset('back/plugins/ladda/spin.min.js')}}"></script>
<script src="{{asset('back/plugins/ladda/ladda.min.js')}}"></script>
<script src="{{asset('back/plugins/jquery-mask-input/jquery.mask.min.js')}}"></script>
<script src="{{asset('back/plugins/select2/js/select2.min.js')}}"></script>
<script src="{{asset('back/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js')}}"></script>
<script src="{{asset('back/plugins/jvectormap/jquery-jvectormap-world-mill.js')}}"></script>
<script src="{{asset('back/plugins/daterangepicker/moment.min.js')}}"></script>
<script src="{{asset('back/plugins/daterangepicker/daterangepicker.js')}}"></script>
<script src="{{asset('back/plugins/jekyll-search.min.js')}}"></script>
<script src="{{asset('back/js/sleek.js')}}"></script>
<script src="{{asset('back/js/chart.js')}}"></script>
<script src="{{asset('back/js/date-range.js')}}"></script>
<script src="{{asset('back/js/map.js')}}"></script>
<script src="{{asset('back/js/custom.js')}}"></script>

<script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
<script src="https://cdn.ckeditor.com/4.16.2/full/ckeditor.js"></script>

<script>
  $(document).ready(function() {
    $('.category').select2({
      placeholder: 'Select category',
    });
    //coupon category
    $('.special_cat_id').select2({
      placeholder: 'Select special category',
    });
    //coupon product
    $('.coupon_product').select2({
      placeholder: 'Select product',
    });
    //coupon users
    $('.users').select2({
      placeholder: 'Select user',
    });
    $('.tags').select2({
        placeholder: 'Select tags',
        tags: true,
      }
    );
    $('.pair_up').select2({
      placeholder: 'Select product',
    });
    $('.related_product').select2({
      placeholder: 'Select product',
    });
    $('.recent_product').select2({
      placeholder: 'Select product',
    });

    $('#example').DataTable();
    $(".js-example-basic-multiple").select2({
      placeholder: "Select Location"
    });
    CKEDITOR.replace('description', {
      extraAllowedContent: 'div'
    });
});
</script>
<script>
  $(document).ready(function(){
    $('.dropify').dropify({
      messages: {
        'error':''
      },
    });
  });
</script>
<script>
  var cer = document.querySelectorAll('#row-count').length;
  if(cer == 0){
      cer =1;
  }
  var mx = 9;
  $('.popAttribute').on('click', function(e) {
  e.preventDefault();
  const form = `
  <div id="certificate_section_content" class="certificate_section_content sec${cer+1}" >
    <div  class="row mt-2">
      <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12">
        <div class="Experience-history mb-4">
          <span>New Attribute `+(cer+1)+`
          <button class="remove_btn text-danger rm-btn" onClick="removeCertificate(${cer+1})"> &nbsp;<i style="font-size:13px;" class="fa fa-trash"></i></button>
          </span>
        </div>
      </div>
    </div>
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
  <br>
  </div>
  `
  console.log(form)
  $('#attributeCard').append('<div>' + form + '</div>');
  // if (exep < mx) {
  // $('#expCard').append('<div>' + form + '</div>');
  cer++
  // alert('Add More Experience Info');
  // }else{
  // alert('You can not add more  than 10 Experience info.');
  // }
  $('#attributeCard').on('click', '.remove_btn', function(e) {
      e.preventDefault();
      $(this).parent('.certificate_section_content').remove();
      cer--
  })
  });
  function removeCertificate(id) {
  // e.preventDefault();
  $(`.certificate_section_content.sec${id}`).remove();
  cer--
  console.log('id')
  }
  </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script>
  $(document).ready(function(){
    $('#add-product').validate();
  });
  $(document).on('click','.rmv-stk',function(){
    var attr_id = $(this).attr('data-attr-id');
    $.ajax({
        url: "/admin/products/delete-attribute-stock",
        type: "POST",
        data:{
          _token: "{{ csrf_token() }}",
          id:attr_id,
        },
        success:function(response){
            console.log(response)
        },
    });
  });
</script>
<script>
    $(document).on('change', '.order-status', function () {
        var status = $(this).val()
        console.log(status)
        var order_id = $(this).data('order-id');
        $.ajax({
            url: "/admin/orders/change/status/" + status + "/" + order_id,
            type: "GET",
            dataType: "json",
            success: function (data) {
                success(data.success, order_id, status)
            }
        });
    });
    function success(message, order_id, status) {
        $('#success-msg').html(`<div class="alert alert-dismissible fade show text-white text-center alert-success mt-2 rounded" role="alert"><i class="fas fa-check-circle"></i> ${message}</div>`).fadeIn().delay(4000).fadeOut('fast');
    }
</script>
@yield('js')
</body>
</html>