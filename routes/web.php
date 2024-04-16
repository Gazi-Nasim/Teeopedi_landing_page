<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ShippingController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\UserdashboardController;
use App\Http\Controllers\UserRegisterController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\GeneralSettingController;
use App\Http\Controllers\OfferController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\SocialIconController;
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\LandingController;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::post('/adMinL0gin', [AdminLoginController::class,'adminLogin'])->name('admin.login');
//Admin Routes
Route::group(['middleware'=>'admin'],function(){
    Route::prefix('admin')->group(function () {
        Route::post('/logout/custom/', [AdminController::class, 'customLogout'])->name('admin.logout.custom');
        Route::get('/Teeopedia_Dashboard', [AdminController::class,'index'])->name('admin.dashboard')->middleware('admin');
        Route::controller(ProductController::class)->group(function () {
            Route::prefix('products')->group(function () {
                Route::get('/', 'index')->name('product.index');
                Route::get('/add-product', 'addProduct')->name('add-product');
                Route::post('/store-product', 'storeProduct')->name('store-product');
                Route::get('/{id}/edit-product', 'editProduct')->name('product.edit');
                Route::post('/{id}/update-product', 'updateProduct')->name('product.update');
                Route::get('/{id}/delete-product', 'deleteProduct')->name('product.delete');
                Route::post('/delete-gallery-img', 'deleteGalleryImg')->name('product-gal-img.delete');
                Route::post('/get-gallery-images', 'getGalleryImg')->name('product-gal-img.show');        
                
                
            });
            Route::group(['prefix'=>'product-tag'], function(){
                Route::get('/', 'tag_index');
                Route::post('/store', 'tag_store')->name('tag.store');
                Route::get('/{id}/edit', 'tag_edit')->name('tag.edit');
                Route::post('/{id}/update','tag_update')->name('tag.update');
                Route::get('/{id}/delete', 'tag_delete')->name('tag.delete');
            });
        });
        Route::controller(GeneralSettingController::class)->group(function () {
            Route::group(['prefix' => 'general-settings'], function () {
                Route::get('/edit', 'setting_edit')->name('general-settings.edit');
                Route::post('/update', 'setting_update')->name('general-settings.update');
            });
        });

        Route::controller(LandingController::class)->group(function () {
            Route::group(['prefix' => 'landing-page'], function () {
                Route::get('/{id}', 'index')->name('landing.index');
                Route::put('/headers-udpate/{id}', 'header_update')->name('landing.header_update');
                
                Route::get('advantage/{id}', 'advantage')->name('landing.advantage');
                Route::post('advantage/{id}', 'store_advantage')->name('landing.store_advantage');
                Route::delete('advantage/{id}', 'advantage_delete')->name('landing.advantage_delete');
                
                Route::get('policy/{id}', 'policy')->name('landing.policy');
                Route::post('policy/{id}', 'store_policy')->name('landing.store_policy');
                Route::delete('policy/{id}', 'delete_policy')->name('landing.delete_policy');
                
                Route::get('bullets/{id}', 'bullets')->name('landing.bullets');
                Route::post('bullets/{id}', 'store_bullets')->name('landing.store_bullets');
                Route::delete('bullets/{id}', 'delete_bullets')->name('landing.delete_bullets');
                
                Route::get('whychoose/{id}', 'whychoose')->name('landing.whychoose');
                Route::post('whychoose/{id}', 'store_whychoose')->name('landing.store_whychoose');
                Route::delete('whychoose/{id}', 'delete_whychoose')->name('landing.delete_whychoose');
                
                Route::get('activate/{id}', 'activate')->name('landing.activate');
                Route::post('webOrder/{id}', 'webOrder')->name('landing.webOrder');
                Route::get('/procuct-order', 'webOrder_list')->name('product-order');
            });
        });

        Route::controller(UserController::class)->group(function () {
            Route::group(['prefix' => 'users'], function () {
                Route::get('/', 'allUser')->name('users.all');
                Route::get('/add-user', 'addUser')->name('add-user');
                Route::post('/store-user', 'storeUser')->name('store-user');
                Route::get('/edit-user/{id}', 'editUser')->name('edit-user');
                Route::post('update-user/{id}', 'updateUser')->name('update-user');
                Route::get('delete-user/{id}', 'deleteUser')->name('delete-user');
            });
        });
        Route::controller(SocialIconController::class)->group(function () {
            Route::group(['prefix' => 'social-icons'], function () {
                Route::get('/', 'allIcons')->name('social-icons.all');
                Route::get('/add-social-icon', 'addIcon')->name('add-social-icon');
                Route::post('/store-social-icon', 'storeIcon')->name('store-social-icon');
                Route::get('/edit-social-icon/{id}', 'editIcon')->name('edit-social-icon');
                Route::post('/update-social-icon/{id}', 'updateIcon')->name('update-social-icon');
                Route::get('delete-social-icon/{id}', 'deleteIcon')->name('delete-social-icon');
            });
        });
        Route::controller(ShippingController::class)->group(function () {
            Route::group(['prefix' => 'shipping'], function() {
                Route::get('/local-delivery', 'localDelivery')->name('local-delivery');
                Route::get('/local-delivery/add','addLocalDelivery')->name('add.local-delivery');
                Route::post('/local-delivery','storeLocalDelivery')->name('save.local-delivery');
                Route::get('/local-delivery/edit/{id}','editLocalDelivery')->name('edit.local-delivery');
                Route::post('/local-delivery/update/{id}','updateLocalDelivery')->name('update.local-delivery');
                Route::get('/local-delivery/delete/{id}','deleteLocalDelivery')->name('delete.local-delivery');
            });
        });
        Route::controller(OrderController::class)->group(function () {
            Route::group(['prefix' => 'orders'], function() {
                Route::get('/all-order','allOrder')->name('orders.all');
                Route::get('/view-order/{id}','orderDetails')->name('orders.details');
                Route::post('/delete-order/{id}','orderDelete')->name('orders.delete');
                Route::get('/change/status/{status}/{order_id}', 'changeOrderStatus')->name('order.change-status');
            });
        });
        Route::controller(CategoryController::class)->group(function () {
            Route::group(['prefix'=>'category'], function(){
                Route::get('/', 'category');
                Route::post('/store', 'store_cat')->name('category.store');
                Route::get('/{id}/edit', 'edit_cat')->name('category.edit');
                Route::post('/{id}/update', 'update_cat')->name('category.update');
                Route::get('/{id}/delete', 'delete_cat')->name('category.delete');
            });
            Route::group(['prefix'=>'special-category'], function(){
                Route::get('/', 'special_category');
                Route::post('/store', 'special_store_cat')->name('special-category.store');
                Route::get('/{id}/edit', 'special_edit_cat')->name('special-category.edit');
                Route::post('/{id}/update', 'special_update_cat')->name('special-category.update');
                Route::get('/{id}/delete', 'special_delete_cat')->name('special-category.delete');
            });
        });
        Route::controller(SliderController::class)->group(function () {
            Route::group(['prefix'=>'slider'], function(){
                Route::get('/', 'slider_index');
                Route::get('/add-slider', 'slider_add');
                Route::post('/store', 'slider_store')->name('slider.store');
                Route::get('/{id}/edit', 'slider_edit')->name('slider.edit');
                Route::post('/{id}/update','slider_update')->name('slider.update');
                Route::get('/{id}/delete', 'slider_delete')->name('slider.delete');
                Route::get('/gallery/{id}/delete', 'delete_gallery')->name('slider.gallery.delete');
            });
        });
        Route::controller(OfferController::class)->group(function () {
            Route::group(['prefix' => 'offers'], function () {
                Route::get('/', 'offers')->name('offer.index');
                Route::get('/create', 'create_offer')->name('offer.create');
                Route::post('/store', 'store_offer')->name('offer.store');
                Route::get('/{id}/edit', 'edit_offer')->name('offer.edit');
                Route::post('/{id}/update', 'update_offer')->name('offer.update');
                Route::get('/{id}/delete', 'delete_offer')->name('offer.delete');
            });
        });
        Route::controller(BlogController::class)->group(function () {
            Route::group(['prefix'=>'blogs'], function(){
                Route::get('/', 'allBlog')->name('blog.all');
                Route::get('/create-blog', 'createBlog')->name('blog.create');
                Route::post('/store-blog', 'storeBlog')->name('blog.store');
                Route::get('/edit-blog/{id}', 'editBlog')->name('blog.edit');
                Route::post('update-blog/{id}', 'updateBlog')->name('blog.update');
                Route::get('delete-blog/{id}', 'deleteBlog')->name('blog.delete');
                Route::get('change-cover', 'changeCover')->name('blog.change-cover');
                Route::post('update-cover', 'updateCover')->name('blog.update-cover');
            });
        });
        Route::controller(PagesController::class)->group(function () {
            Route::group(['prefix' => 'pages'], function () {
                Route::get('/', 'allPages')->name('pages.all');
                Route::get('/create-page', 'createPage')->name('page.create');
                Route::post('/store-page', 'storePage')->name('page.store');
                Route::get('/edit-page/{id}', 'editPage')->name('page.edit');
                Route::post('update-page/{id}', 'updatePage')->name('page.update');
                Route::get('delete-page/{id}', 'deletePage')->name('page.delete');
            });
        });
    });
});
Route::controller(CheckoutController::class)->group(function () {
    Route::group(['prefix'=>'checkout'], function(){
        Route::get('/', 'checkout')->name('checkout');
    });
    Route::post('/coupon/apply/', 'applyCoupon')->name('apply-coupon');
    Route::get('/get/thana/{id}','getThana');
    Route::get('/get/shipping/{id}','getShipping');
});
Route::controller(OrderController::class)->group(function () {
    Route::post('/place-order', 'placeOrder')->name('place-order');
    Route::get('/order/complete','orderComplete')->name('complete-order');
    Route::post('/success', 'success');
    Route::post('/fail', 'fail');
    Route::post('/cancel', 'cancel');
    Route::post('/ipn', 'ipn');
});

Route::controller(CartController::class)->group(function () {
    Route::group(['prefix'=>'cart'], function(){
        Route::get('/', 'cart')->name('cart');
        Route::get('/remove/all', 'removeAll')->name('cart-remove-all');
        Route::post('/update','updateCart')->name('cart-update');
        Route::post('/update/qty','updateQty')->name('cart-qty-update');
        Route::post('/{id}','addToCart')->name('cart-submit');
        Route::get('/remove/{id}','removeItem')->name('cart-remove-each');
        Route::post('/buy/{id}','buy')->name('buy');
    });
});
Route::controller(FrontendController::class)->group(function () {
    Route::get('/testpage', 'index')->name('index');
    Route::get('/search', 'search')->name('search');
    Route::get('/blogs', 'blogs')->name('blogs');
    Route::get('/blogs/{blog}', 'blogDetails')->name('blog-details');
    Route::get('/pages/{slug}', 'pages')->name('pages');
    Route::get('/about-us', 'aboutUs')->name('about-us');
    Route::get('/store-location', 'storeLocation')->name('store-location');
    Route::get('/terms-condition', 'termsCondition')->name('terms-condition');
    Route::get('/privacy-policy', 'privacyPolicy')->name('privacy-policy');
    Route::get('/return-refund', 'returnRefund')->name('return-refund');
    Route::get('/faq', 'faq')->name('faq');
    Route::get('/product', 'products')->name('products');
    Route::get('/product-category/{category:slug}', 'category')->name('category');
    Route::get('/product-details/{slug}', 'productDetails')->name('product-details');
    Route::get('/quick_view/{id}', 'quick_view')->name('quick_view');
    Route::post('/get/product/attribute', 'getProductAttr')->name('get-product-attribute');
    Route::get('/contact-us', 'contactUs')->name('contact-us');
    Route::post('/contact-submit', 'contactSubmit')->name('contact-submit');
});
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/landing-page/{slug}', [WebsiteController::class, 'index'])->name('landing_page');
//user login, register and dashboard routes
Route::get('/user/register', [UserRegisterController::class, 'userRegister'])->name('user-register');
Route::post('/register', [UserRegisterController::class,'registerSubmit'])->name('user-register-submit');
Route::get('/user/login', [CustomerAuthController::class, 'userLogin'])->name('user-login');
Route::post('/login', [CustomerAuthController::class,'credential'])->name('login-custom');
Route::group(['prefix'=>'user'], function(){
    Route::group(['middleware'=>'auth','middleware'=>'IsUser'],function(){
        Route::controller(UserdashboardController::class)->group(function () {
            Route::get('/dashboard', 'dashboard')->name('user.dashboard');
            Route::get('/orders', 'userOrder')->name('user.orders');
            Route::get('/profile', 'userProfile')->name('user.profile');
            Route::get('/change-password', 'userChangePassword')->name('user.change-password');
            Route::post('/store-new-password', 'storeNewPassword')->name('user.store-new-password');
            Route::get('/order-details/{id}', 'userOrderDetails')->name('user.order-details');
            Route::post('/update/profile/', 'updateProfile')->name('user.update-profile');
            Route::post('/logout/custom/', 'customLogout')->name('logout.custom');
        });
    });
});
Route::get('/', [AdminLoginController::class,'showAdminLoginForm'])->name('admin.loginpage');
Route::fallback(function () {
    return view('errors.404');
});
Auth::routes([
    'register'=>false,
    'verify' => false,
    'login' => false,
]);