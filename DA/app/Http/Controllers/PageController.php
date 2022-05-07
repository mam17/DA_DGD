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
        $product = Product::orderBy('id', 'desc')->get();
        $blog = Blog::all();
        $slide = Slide::all();
        $sale = Product::where('discount', '>', 0)->limit(4)->get();
        $status = Product::where('status', 1)->limit(4)->get();
        $viewData = [
            'product' => $product,
            'blog' => $blog,
            'slide' => $slide,
            'sale' => $sale,
            'status' => $status
        ];
        return view('front.index', $viewData);
    }
    
    public function getProduct()
    {
        $product = Product::orderBy('id', 'desc')->get();
        $category = Category::all();
        $brand = Brand::all();
        $viewData = [
            'product' => $product,
            'category' => $category,
            'brand' => $brand
        ];
        return view('front.product', $viewData);
    }

    public function getCategory($slug, $id)
    {
        $brand = Brand::all();
        $category = Category::all();
        $cate = Category::find($id);
        $viewData = [
            'cate' => $cate,
            'brand' => $brand,
            'category' => $category
        ];
        return view('front.category', $viewData);
    }

    public function getBrand($slug, $id)
    {
        $bra = Brand::find($id);
        $brand = Brand::all();
        $category = Category::all();
        $viewData = [
            'bra' => $bra,
            'brand' => $brand,
            'category' => $category
        ];
        return view('front.brand', $viewData);
    }

    public function getProductDetail( $product_slug, $product_id)
    {
        $product = Product::find($product_id);
        $viewData = [
            'product' => $product,
        ];
        return view('front.pro-detail', $viewData);
    }

    public function getGallery()
    {
        return view('front.index');
    }

    public function getContact()
    {
        $slide = Slide::all();
        $viewData = [
            'slide' => $slide,
        ];
        return view('front.contact-us', $viewData);
    }
    
    public function getAccount()
    {
        $slide = Slide::all();
        $viewData = [
            'slide' => $slide,
        ];
        return view('front.my-account', $viewData);
    }
    public function getSlide()
    {
        return view('front.index');
    }
    
    public function getAbout()
    {
        $blog = Blog::all();
        $slide = Slide::all();
        $viewData = [
            'blog' => $blog,
            'slide' => $slide
        ];
        return view('front.about', $viewData);
    }
}