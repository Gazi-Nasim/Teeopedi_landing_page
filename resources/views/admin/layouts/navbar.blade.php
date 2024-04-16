<header class="main-header" id="header">
    <nav class="navbar navbar-static-top navbar-expand-lg">
        <!-- Sidebar toggle button -->
        <button id="sidebar-toggler" class="sidebar-toggle">
            <span class="sr-only">Toggle navigation</span>
        </button>
        <!-- search form -->
        <div class="search-form d-none d-lg-inline-block">
        </div>

        <div class="navbar-right ">
            <ul class="nav navbar-nav">
            <!-- User Account -->
            <li class="dropdown user-menu">
                <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                @if(Auth::user())
                    @if(!empty(Auth::user()->avatar))
                        <img src="{{asset('uploads/users/'.Auth::user()->avatar)}}" class="user-image" alt="User Image" />
                    @else
                        <img src="{{asset('admin_assets/img/user/user.png')}}" class="user-image" alt="User Image" />
                    @endif
                    <span class="d-none d-lg-inline-block"> {{ Auth::user()->name }}</span>
                @endif
                </button>
                <ul class="dropdown-menu dropdown-menu-right">
                <!-- User image -->
                <li class="dropdown-header">
                @if(Auth::user())
                    @if(!empty(Auth::user()->avatar))
                        <img src="{{asset('uploads/users/'.Auth::user()->avatar)}}" class="user-image" alt="User Image" />
                    @else
                        <img src="{{asset('admin_assets/img/user/user.png')}}" class="user-image" alt="User Image" />
                    @endif
                    <div class="d-inline-block header-cus-color">
                    {{ Auth::user()->name }} <small class="pt-1 "> {{ Auth::user()->email }}</small>
                    </div>
                @endif
                </li>

                {{-- <li>
                    <a href="profile.html">
                    <i class="mdi mdi-account"></i> My Profile
                    </a>
                </li>
                <li>
                    <a href="email-inbox.html">
                    <i class="mdi mdi-email"></i> Message
                    </a>
                </li>
                <li>
                    <a href="#"> <i class="mdi mdi-diamond-stone"></i> Projects </a>
                </li>
                <li>
                    <a href="#"> <i class="mdi mdi-settings"></i> Account Setting </a>
                </li> --}}

                <li class="dropdown-footer">
                    <a class="" href="{{ route('admin.logout.custom') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"> <i class="mdi mdi-logout"></i> Log Out </a>
                    <form id="logout-form" action="{{ route('admin.logout.custom') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
                </ul>
            </li>
            </ul>
        </div>
    </nav>
</header>