    <aside class="left-sidebar bg-sidebar">
      <div id="sidebar" class="sidebar sidebar-with-footer">
        <!-- Aplication Brand -->
        <div class="app-brand">
          <a href="{{route('admin.dashboard')}}">
            @if(!empty($settings) && !empty($settings->logo))
            <img class="img-fluid" width="100" src="{{asset('uploads/settings/logo/'.$settings->logo)}}">
            @else
            <img class="img-fluid" width="100" src="{{asset('assets/images/icon/layout3/logo.png')}}">
            @endif
          </a>
        </div>
        <!-- begin sidebar scrollbar -->
        <div class="sidebar-scrollbar">
          <!-- sidebar menu -->
          <ul class="nav sidebar-inner" id="sidebar-menu">
            <li class="has-sub active expand">
              <a class="sidenav-item-link" href="{{route('admin.dashboard')}}" aria-expanded="false" aria-controls="dashboard">
                <i class="mdi mdi-view-dashboard-outline"></i>
                <span class="nav-text">Dashboard</span>
              </a>
            </li>
            <li class="has-sub">
              <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#ui-elements" aria-expanded="false" aria-controls="ui-elements">
                <i class="mdi mdi-folder-multiple-outline"></i>
                <span class="nav-text">Product</span> <b class="caret"></b>
              </a>
              <ul class="collapse" id="ui-elements" data-parent="#sidebar-menu">
                <div class="sub-menu">
                  <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#catalog" aria-expanded="false" aria-controls="category">
                      <span class="nav-text">Product Catalog</span> <b class="caret"></b>
                    </a>
                    <ul class="collapse" id="catalog">
                      <div class="sub-menu">
                        <li>
                          <a href="{{url('/admin/products')}}">All Products</a>
                        </li>
                        <li>
                          <a href="{{url('/admin/products/add-product')}}">Add Product</a>
                        </li>
                        <li>
                          <a href="{{url('/admin/landing-page/product-order')}}">Product Order</a>
                        </li>
                      </div>
                    </ul>
                  </li>
                  <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#category" aria-expanded="false" aria-controls="category">
                      <span class="nav-text">Category</span> <b class="caret"></b>
                    </a>
                    <ul class="collapse" id="category">
                      <div class="sub-menu">
                        <li>
                          <a href="{{url('/admin/category')}}">All Category</a>
                        </li>
                      </div>
                    </ul>
                  </li>
                  
                  <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#specialcategory" aria-expanded="false" aria-controls="specialcategory">
                      <span class="nav-text">Special Category</span> <b class="caret"></b>
                    </a>
                    <ul class="collapse" id="specialcategory">
                      <div class="sub-menu">
                        <li>
                          <a href="{{url('/admin/special-category')}}">All Category</a>
                        </li>
                      </div>
                    </ul>
                  </li>
                  <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#p-tag" aria-expanded="false" aria-controls="p-tag">
                      <span class="nav-text">Product Tag</span> <b class="caret"></b>
                    </a>
                    <ul class="collapse" id="p-tag">
                      <div class="sub-menu">
                        <li>
                          <a href="{{url('/admin/product-tag')}}">All Tags</a>
                        </li>
                      </div>
                    </ul>
                  </li>
                </div>
              </ul>
            </li>

            <li class="has-sub">
              <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#profile" aria-expanded="false" aria-controls="p-tag">
                <i class="mdi mdi-account"></i>
                <span class="nav-text">Profile</span> <b class="caret"></b>
              </a>
              <ul class="collapse" id="profile">
                <div class="sub-menu">
                  <li>
                    <a href="{{route('edit-user',auth()->user()->id)}}">Update Profile</a>
                  </li>
                </div>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </aside>