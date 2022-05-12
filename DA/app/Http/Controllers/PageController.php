<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slide;
use Illuminate\Http\Request;

class PageController extends Controller
{
   
    public function index()
    {
        $product = Product::orderBy('id', 'desc')->limit(4)->get();
        $pro = Product::all();
        $blog = Blog::all();
        $slide = Slide::all();
        $sale = Product::where('discount', '>', 0)->limit(4)->get();
        $status = Product::where('status', 1)->limit(4)->get();
        $viewData = [
            'product' => $product,
            'blog' => $blog,
            'slide' => $slide,
            'sale' => $sale,
            'status' => $status,
            'pro' => $pro
        ];
        return view('front.index', $viewData);
    }
    
    public function getProduct()
    {
        $product = Product::orderBy('id', 'desc')->get();
        $pro = Product::all();
        $category = Category::all();
        $brand = Brand::all();
        $viewData = [
            'product' => $product,
            'category' => $category,
            'brand' => $brand,
            'pro' => $pro

        ];
        return view('front.product', $viewData);
    }

    public function getCategory($slug, $id)
    {
        $brand = Brand::all();
        $pro = Product::all();
        $category = Category::all();
        $cate = Category::find($id);
        $viewData = [
            'cate' => $cate,
            'brand' => $brand,
            'category' => $category,
            'pro' => $pro

        ];
        return view('front.category', $viewData);
    }

    public function getBrand($slug, $id)
    {
        $pro = Product::all();
        $bra = Brand::find($id);
        $brand = Brand::all();
        $category = Category::all();
        $viewData = [
            'bra' => $bra,
            'brand' => $brand,
            'category' => $category,
            'pro' => $pro
        ];
        return view('front.brand', $viewData);
    }

    public function getProductDetail( $product_slug, $product_id)
    {
        $product = Product::find($product_id);
        $pro = Product::all();
        $viewData = [
            'product' => $product,
            'pro' => $pro
        ];
        return view('front.pro-detail', $viewData);
    }

    public function getGallery()
    {
        return view('front.gallery');
    }

    public function getContact()
    {
        $slide = Slide::all();
        $pro = Product::all();
        $viewData = [
            'slide' => $slide,
            'pro' => $pro
        ];
        return view('front.contact-us', $viewData);
    }
    
    public function getAccount()
    {
        $slide = Slide::all();
        $pro = Product::all();
        $viewData = [
            'slide' => $slide,
            'pro' => $pro
        ];
        return view('front.my-account', $viewData);
    }
    public function getSlide()
    {
        $product = Product::orderBy('id', 'desc')->get();
        $pro = Product::all();
        $viewData = [
            'product' => $product,
            'pro' => $pro
        ];
        return view('front.layouts.layout', $viewData);
    }
    
    public function getAbout()
    {
        $pro = Product::all();
        $blog = Blog::all();
        $slide = Slide::all();
        $viewData = [
            'blog' => $blog,
            'slide' => $slide,
            'pro' => $pro
        ];
        return view('front.about', $viewData);
    }

    public function getBlog($blog_slug,$blog_id)
    {
        $pro = Product::all();
        $blog = Blog::all();
        $blo = Blog::find($blog_id);
        $slide = Slide::all();
        $viewData = [
            'blog' => $blog,
            'slide' => $slide,
            'blo' => $blo,
            'pro' => $pro
        ];
        return view('front.blog', $viewData);
    }

    public function getRegister()
    {
        return view('front.layouts.register');
    }
    
    public function getLogin()
    {
        return view('front.layouts.login');
    }
}