<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index()
    {
        $brands = Brand::all();
        return view('admin.brand.brand_list', compact('brands'));
    }

    
    public function create()
    {
        return view('admin.brand.brand_add');
    }
    
    public function store(Request $request)
    {
        $this->validate(
            $request,
            [
                'name_bra' => 'required|unique:brands,name_bra',
            ],
            [
                'name_bra.required' => "Không được để trống",
                'name_bra.unique' => "Trùng tên thương hiệu"
            ]
        );
        
        $slug = Str::slug($request->name_bra);

        $checkSlug = Brand::where('slug', $slug)->first();
        while ($checkSlug) {
            $slug = $checkSlug->slug . "_" . Str::random(length: 2);
        }

        Brand::create([
            'name_bra' => $request->name_bra,
            'slug' => $slug
        ]);

        return redirect()->route('admin.brand.index')->with('success', 'Thêm mới thành công');
    }

    public function edit($id)
    {
        $brand = Brand::find($id);
        $viewdata =[
            'brand' => $brand,
        ];
        return view('admin.brand.brand_edit', $viewdata);
    }

    public function update(Request $request, $id)
    {
        $brand = Brand::find($id);
        $brand->name_bra = $request->name_bra;

        $brand->save();
        return redirect()->route('admin.brand.index')->with('success', 'Sửa thành công');
    }

    public function destroy($id)
    {
        $brand = Brand::find($id);
        $brand->delete();
        return redirect()->route('admin.brand.index')->with('success', 'Xóa thành công');
    }

}
