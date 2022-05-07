<?php

namespace App\Http\Controllers;

use App\Http\Controllers\CategoryController;
use Illuminate\Support\Facades\Route;

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

//users
Route::get('/', [PageController::class, 'index'])->name('index');

Route::get('/about', [PageController::class, 'getAbout'])->name('index.getAbout');

Route::get('/{slug}&id={id}', [PageController::class, 'getCategory'])->name('index.getCategory');
Route::get('/contact-us', [PageController::class, 'getContact'])->name('index.getContact');

Route::get('brand/{slug}&id={id}', [PageController::class, 'getBrand'])->name('index.getBrand');

Route::get('/product/{product_slug}&id={product_id}', [PageController::class, 'getProductDetail'])->name('index.getProductDetail');
Route::get('/gallery', [PageController::class, 'getGallery'])->name('index.getGallery');

Route::get('/slide', [PageController::class, 'getSlide'])->name('index.getSlide');

Route::get('/product', [PageController::class, 'getProduct'])->name('index.getProduct');

Route::get('/my_acc', [PageController::class, 'getAccount'])->name('index.getAccount');



Route::get('/check-out', [PageController::class, 'getCheckOut'])->name('index.getCheckOut');

Route::prefix('cart')->group(function (){
    Route::get('/', [CartController::class, 'index'])->name('cart.index');

    Route::get('/add-cart/{id}', [CartController::class, 'addCart'])->name('cart.addCart');

    Route::get('/delete-cart/{id}', [CartController::class, 'getDelete'])->name('cart.DeleteItemCart');
    Route::get('/delete-list/{id}', [CartController::class, 'DeleteItemListCart'])->name('cart.DeleteItemListCart');

    Route::get('/update-cart/{id}/{quanty}', [CartController::class, 'updateCart'])->name('cart.UpdateItemListCart');

});

// admin
//Public Routes
Route::get('admin/login', [AuthController::class, 'adminLogin'])->name('admin.login');
Route::post('admin/login', [AuthController::class, 'postAdminLogin'])->name('admin.postLogin');

//Protected Routes
Route::prefix('admin')->middleware('admin.login')->group(function () {

    Route::get('/', [AuthController::class, 'index'])->name('admin.index');
    Route::get('/logout', [AuthController::class, 'adminLogout'])->name('admin.logout');

    Route::get('/staff_profile', [AuthController::class, 'adminProfile'])->name('admin.profile');


    Route::prefix('customer')->group(function () {
        Route::get('/', [CustomerController::class, 'index'])->name('admin.khachhang.index');
    });

    Route::prefix('staff')->middleware('admin.role')->group(function () {
        Route::get('/', [StaffController::class, 'index'])->name('admin.staff.index');

        Route::get('create', [StaffController::class, 'create'])->name('admin.staff.create');
        Route::post('store', [StaffController::class, 'store'])->name('admin.staff.store');

        Route::get('edit/{id}', [StaffController::class, 'edit'])->name('admin.staff.edit');
        Route::put('update/{id}', [StaffController::class, 'update'])->name('admin.staff.update');

        Route::get('delete/{id}', [StaffController::class, 'destroy'])->name('admin.staff.destroy');

        Route::get('/lay-lai-mat-khau/{id}', [StaffController::class, 'getChangePassword'])->name('admin.staff.getChangePassword');
    });

    Route::prefix('statistic')->group(function () {
        Route::get('/', [StatisticController::class, 'index'])->name('admin.statistic.index');
        
        Route::get('chart', [StatisticController::class, 'loadChart'])->name('admin.statistic.loadChart');

        Route::get('chart-2', [StatisticController::class, 'loadChart2'])->name('admin.statistic.loadChart2');

        Route::get('chart-3', [StatisticController::class, 'loadChart3'])->name('admin.statistic.loadChart3');
    });

    Route::prefix('category')->group(function () {
        Route::get('/', [CategoryController::class, 'index'])->name('admin.category.index');

        Route::get('create', [CategoryController::class, 'create'])->name('admin.category.create');
        Route::post('store', [CategoryController::class, 'store'])->name('admin.category.store');

        Route::get('edit/{id}', [CategoryController::class, 'edit'])->name('admin.category.edit');
        Route::put('update/{id}', [CategoryController::class, 'update'])->name('admin.category.update');

        Route::get('delete/{id}', [CategoryController::class, 'destroy'])->name('admin.category.destroy');
    });

    Route::prefix('product')->group(function () {
        Route::get('', [ProductController::class, 'index'])->name('admin.product.index');

        Route::get('create', [ProductController::class, 'create'])->name('admin.product.create');
        Route::post('store', [ProductController::class, 'store'])->name('admin.product.store');

        Route::get('edit/{id}', [ProductController::class, 'edit'])->name('admin.product.edit');
        Route::put('update/{id}', [ProductController::class, 'update'])->name('admin.product.update');

        Route::get('delete/{id}', [ProductController::class, 'destroy'])->name('admin.product.destroy');
    });

    Route::prefix('brand')->group(function () {
        Route::get('/', [BrandController::class, 'index'])->name('admin.brand.index');

        Route::get('create', [BrandController::class, 'create'])->name('admin.brand.create');
        Route::post('store', [BrandController::class, 'store'])->name('admin.brand.store');

        Route::get('edit/{id}', [BrandController::class, 'edit'])->name('admin.brand.edit');
        Route::put('update/{id}', [BrandController::class, 'update'])->name('admin.brand.update');

        Route::get('delete/{id}', [BrandController::class, 'destroy'])->name('admin.brand.destroy');
    });

    Route::prefix('user')->group(function () {
        Route::get('', [UserController::class, 'index'])->name('admin.user.index');

        Route::get('create', [UserController::class, 'create'])->name('admin.user.create');
        Route::post('store', [UserController::class, 'store'])->name('admin.user.store');

        Route::get('edit/{id}', [UserController::class, 'edit'])->name('admin.user.edit');
        Route::put('update/{id}', [UserController::class, 'update'])->name('admin.user.update');

        Route::get('delete/{id}', [UserController::class, 'destroy'])->name('admin.user.destroy');
    });

    Route::prefix('staff')->group(function () {
        Route::get('', [StaffController::class, 'index'])->name('admin.staff.index');

        Route::get('create', [StaffController::class, 'create'])->name('admin.staff.create');
        Route::post('store', [StaffController::class, 'store'])->name('admin.staff.store');

        Route::get('edit/{id}', [StaffController::class, 'edit'])->name('admin.staff.edit');
        Route::put('update/{id}', [StaffController::class, 'update'])->name('admin.staff.update');

        Route::get('delete/{id}', [StaffController::class, 'destroy'])->name('admin.staff.destroy');
    });

    Route::prefix('blog')->group(function () {
        Route::get('/', [BlogController::class, 'index'])->name('admin.blog.index');

        Route::get('create', [BlogController::class, 'create'])->name('admin.blog.create');
        Route::post('store', [BlogController::class, 'store'])->name('admin.blog.store');

        Route::get('edit/{id}', [BlogController::class, 'edit'])->name('admin.blog.edit');
        Route::put('update/{id}', [BlogController::class, 'update'])->name('admin.blog.update');

        Route::get('delete/{id}', [BlogController::class, 'destroy'])->name('admin.blog.destroy');
    });

    Route::prefix('slide')->group(function () {
        Route::get('/', [SlideController::class, 'index'])->name('admin.slide.index');

        Route::get('create', [SlideController::class, 'create'])->name('admin.slide.create');
        Route::post('store', [SlideController::class, 'store'])->name('admin.slide.store');

        Route::get('edit/{id}', [SlideController::class, 'edit'])->name('admin.slide.edit');
        Route::put('update/{id}', [SlideController::class, 'update'])->name('admin.slide.update');

        Route::get('delete/{id}', [SlideController::class, 'destroy'])->name('admin.slide.destroy');
    });
});
