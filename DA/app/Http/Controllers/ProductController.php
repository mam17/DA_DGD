<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Product;
use App\Models\Slide;
use App\Models\Staff;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view('admin.product.product_list', compact('products'));
    }

    public function create()
    {
        $category = Category::all();
        $brand  = Brand::all();
        $viewdata = [
            'category' => $category,
            'brand' => $brand
        ];
        return view('admin.product.product_add', $viewdata);
    }

    public function store(Request $request)
    {
        $product = new Product();

        $data = $request->except('_token');
        $messages = [
            'name_pr.required' => "Nhập tên sản phẩm",
            'name_pr.unique' => "Trùng tên sản phẩm",
            'category_id.required' => "Chưa chọn danh mục sản phẩm",
            'brand_id.required' => "Chưa chọn thương hiệu sản phẩm",
            'quantity.required' => "Hãy nhập số lượng",
            'quantity.numeric' => 'Hãy nhập số!',
            'quantity.min' => 'Số lượng lớn hơn 1!',
            'price.required' => "Hãy nhập giá bán",
            'price.numeric' => 'Hãy nhập số!',
            'price.min' => 'Đơn giá bán lớn hơn 0!',
            'image.required' => "Hãy nhập hình ảnh",
            'description.required' => "Hãy nhập mô tả",
            'discount.required' => "Hãy nhập giảm giá",
            'gift.required' => "Hãy nhập quà tặng kèm",
            'price.gt'=> "Giảm giá phải nhỏ hơn giá niêm yết",
        ];

        $validator = Validator::make($data, [
            'name_pr' => 'required|unique:products,name_pr',
            'quantity' => 'required',
            'category_id' => 'required',
            'brand_id' => 'required',
            'price' => 'required|numeric|min:0',
            'image' => 'required',
            'description' => 'required',
            'discount' => 'required',
            'gift' => 'required',
            'price' => 'required|gt:discount'
        ], $messages);
        if ($validator->fails()) {
            $errors = $validator->errors();
            return redirect()->back()->with('errors', $errors);
        } else {
            $product->name_pr = $request->name_pr;
            $product->category_id = $request->category_id;
            $product->brand_id = $request->brand_id;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->quantity = $request->quantity;
            $product->discount = $request->discount;
            $product->gift = $request->gift;
            $product->sold = $request->sold;
            $product->status = $request->status;
            $product->slug = Str::slug($request->name_pr);

            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $name_file = $file->getClientOriginalName();
                $ext = $file->getClientOriginalExtension();

                if (
                    strcasecmp($ext, 'jpg') === 0
                    || strcasecmp($ext, 'png') === 0
                    || strcasecmp($ext, 'jepg') === 0
                ) {
                    $image = Str::random(5) . '_' . $name_file;
                    while (file_exists('uploads/images/product/' . $image)) {
                        $image = Str::random(5) . '_' . $name_file;
                    }
                }
                $file->move('uploads/images/product', $image);
                $product->image = $image;
            }

            $product->save();
            return redirect()->route('admin.product.index')->with('success', 'Thêm mới thành công');
        }
    }

    public function edit($id)
    {
        $product = Product::find($id);
        $category = Category::all();
        $brand  = Brand::all();
        $viewdata = [
            'product' => $product,
            'category' => $category,
            'brand' => $brand
        ];
        return view('admin.product.product_edit', $viewdata);
    }

    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $product->name_pr = $request->name_pr;
        $product->category_id = $request->category;
        $product->brand_id = $request->brand;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->quantity = $request->quantity;
        $product->discount = $request->discount;
        $product->gift = $request->gift;
        $product->sold = $request->sold;
        $product->status = $request->status;
        $product->slug = Str::slug($request->name_pr);

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $name_file = $file->getClientOriginalName();
            $ext = $file->getClientOriginalExtension();

            if (
                strcasecmp($ext, 'jpg') === 0
                || strcasecmp($ext, 'png') === 0
                || strcasecmp($ext, 'jepg') === 0
            ) {
                $image = Str::random(5) . '_' . $name_file;
                while (file_exists('uploads/images/product/' . $image)) {
                    $image = Str::random(5) . '_' . $name_file;
                }
            }
            $file->move('uploads/images/product', $image);
            $product->image = $image;
        }

        $product->save();
        return redirect()->route('admin.product.index')->with('success', 'Sửa thành công');
    }

    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return redirect()->route('admin.product.index')->with('success', 'Xóa thành công');
    }


}
