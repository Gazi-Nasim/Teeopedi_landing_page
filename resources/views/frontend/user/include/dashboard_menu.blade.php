{{-- <div class="sidebar-wrap">
    <div class="sdbar-profile-ph">
        <h5 class="m-0">{{auth()->user()->name}}</h5>
    </div>
    <ul class="sidebar">
        <li class="@if(request()->url() == route('user.dashboard')) active @endif"><a href="{{route('user.dashboard')}}"><i class='bx bxs-dashboard'></i></i>Dashboard</a></li>
        <li class="@if(request()->url() == route('user.orders')) active @endif"><a href="{{route('user.orders')}}"><i class='bx bx-cart'></i>Order</a></li>
        <!-- <li><a href="review.php"><i class='bx bx-file'></i>Review</a></li> -->
        <li class="@if(request()->url() == route('user.profile')) active @endif"><a href="{{route('user.profile')}}"><i class='bx bx-user'></i>Profile</a></li>
        <li class="@if(request()->url() == route('user.change-password')) active @endif"><a href="{{route('user.change-password')}}"> <i class='bx bx-lock-alt'></i>Change Password</a></li>
        <li>
            <a href="{{ route('logout.custom') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class='bx bx-log-out-circle'></i>Logout</a>
            <form id="logout-form" action="{{ route('logout.custom') }}" method="POST" class="d-none">
                @csrf
            </form>
        </li>
    </ul>
</div> --}}
<div class="dashboard-sidebar">
    <div class="profile-top">
        <div class="profile-image">
            @if(!empty(auth()->user()->avatar))
                <img src="{{asset('/uploads/users/'.auth()->user()->avatar)}}" alt="" class="img-fluid">
            @else
                <img src="{{asset('/assets/images/avtar.jpg')}}" alt="{{auth()->user()->name}}" class="img-fluid">
            @endif
        </div>
        <div class="profile-detail">
            <h5>{{auth()->user()->name}}</h5>
            <h6>{{auth()->user()->email}}</h6>
        </div>
    </div>
    <div class="faq-tab">
        <ul class="nav nav-tabs" id="top-tab" role="tablist">
            <li class="nav-item"><a href="{{route('user.dashboard')}}"
                    class="nav-link @if(request()->url() == route('user.dashboard')) active @endif">Dashboard</a></li>
            <li class="nav-item"><a href="{{route('user.orders')}}"
                    class="nav-link @if(request()->url() == route('user.orders')) active @endif">My Orders</a></li>
            <li class="nav-item"><a href="{{route('user.profile')}}"
                    class="nav-link @if(request()->url() == route('user.profile')) active @endif">Profile</a></li>
            <li class="nav-item"><a href="{{route('user.change-password')}}"
                    class="nav-link @if(request()->url() == route('user.change-password')) active @endif">Security</a> </li>
            <li class="nav-item ">
                <a href="{{ route('logout.custom') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="nav-link">Log Out</a> 
                <form id="logout-form" action="{{ route('logout.custom') }}" method="POST" class="d-none">
                    @csrf
                </form>
            </li>
        </ul>
    </div>
</div>
