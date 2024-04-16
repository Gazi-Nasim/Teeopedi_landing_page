<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no" />

  <title> @if(!empty($settings)){{$settings->site_title}}@endif  - Admin Login</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet"/>
  <link href="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css" rel="stylesheet" />

  <!-- PLUGINS CSS STYLE -->
  <link href="{{asset('admin_assets/plugins/toaster/toastr.min.css')}}" rel="stylesheet" />
  <link href="{{asset('admin_assets/plugins/nprogress/nprogress.css')}}" rel="stylesheet" />
  <link href="{{asset('admin_assets/plugins/flag-icons/css/flag-icon.min.css')}}" rel="stylesheet"/>
  <link href="{{asset('admin_assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css')}}" rel="stylesheet" />
  <link href="{{asset('admin_assets/plugins/ladda/ladda.min.css')}}" rel="stylesheet" />
  <link href="{{asset('admin_assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet" />
  <link href="{{asset('admin_assets/plugins/daterangepicker/daterangepicker.css')}}" rel="stylesheet" />

  <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" />
  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="{{asset('admin_assets/css/sleek.css')}}" />
  <link rel="stylesheet" href="{{asset('admin_assets/css/custom.css')}}" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <!-- FAVICON -->

  <script src="{{asset('admin_assets/plugins/nprogress/nprogress.js')}}"></script>
  <style>
    .cus-bg-color{
        background-color: #d18617;
    }
    .cus-txt-color{
        color: #ED1821;
    }
    .card-body{
        background:#fff;
    }
    .f-14{
        font-size: 14px;
    }
    button.btn.btn-block {
        border: 1px solid #d18617;
        color: #d18617;
    }
    button.btn.btn-block:hover {
        transition:.3s all;
        background:#d18617;
        color: #fff;
    }
  </style>
</head>
<body class="bg-light-gray" id="body">
<div class="container d-flex flex-column justify-content-between vh-100">
    <div class="row justify-content-center mt-5">
        <div class="col-xl-5 col-lg-6 col-md-10">
            <div class="card">
                <div class="card-header cus-bg-color">
                    <h4 class="brand-name text-white mt-3 mb-3 text-center">@if(!empty($settings)){{$settings->site_title}}@endif Admin Login</h4>
                </div>
                <div class="card-body p-5">
                    @if(Session::has('error'))
                        <div class="text-danger text-center mb-2" role="alert">
                            <strong>{{Session::get('error')}}</strong>
                        </div>
                    @endif
                    <form action="{{route('admin.login')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-12 mb-4">
                            <input type="email" required="" maxlength="100" name="r_email" value="{{old('r_email')}}" class="form-control input-lg" placeholder="Email Address *" aria-label="Email">
                            @error('r_email')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            </div>
                            <div class="form-group col-md-12 ">
                                <input type="password" class="form-control input-lg" maxlength="50" name="r_password" id="password" aria-describedby="emailHelp" placeholder="Password * ">
                                @error('r_password')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-block">Login</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="cus-bg-color text-white text-center p-3 border-left border-right border-bottom">
                <p class="text-center">&copy; Copyright  <?php echo date('Y')?> @if(!empty($settings)){{$settings->site_title}}@endif</p>
            </div>
        </div>
    </div>
</div>
</body>
