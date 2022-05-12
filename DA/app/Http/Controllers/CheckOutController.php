<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\Order_Detail;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CheckOutController extends Controller
{
  
  public function postCheckout(Request $request)
  {
      $this->validate($request, [
          'name' => 'required',
          'gender' => 'required',
          'address' => 'required',
          'email' => 'required',
          'phone' => 'required'
      ], [
          'name.required' => 'Bạn chưa nhập Usernane',
          'gender.required' => 'Bạn chưa chọn giới tính',
          'address.required' => 'Bạn chưa nhập địa chỉ',
          'email.required' => 'Bạn chưa nhập Email',
          'phonenumber.required' => 'Bạn chưa nhập So dien thoai'
      ]);
      $customer = new Customer;
      $customer->name = $request->name;
      $customer->gender = $request->gender;
      $customer->address = $request->address;
      $customer->email = $request->email;
      $customer->phone = $request->phone;
      $customer->save();
      $cart = Session::get('Cart');
      $order = new Order;
      $order->cus_id = $customer->id;
      $order->user_id = 1;
      $order->total = $cart->totalPrice;
      $order->date = \Carbon\Carbon::now();
      $order->save();
      foreach ($cart->products as $key => $value) {
          $orderdetail = new Order_Detail;
          $orderdetail->order_id = $order->id;
          $orderdetail->product_id = $key;
          $orderdetail->price = $value['price'] / $value['quanty'];
          $orderdetail->quanty = $value['quanty'];
          $orderdetail->save();

          $product = Product::find($key);
          $product->quanty -= $value['quanty'];
          $product->save();
      }
      $request->session()->forget('Cart');
      return redirect(route('index'));
  }
  public function getCheckout()
  {
    $pro = Product::all();
    $infor = Customer::all();
    return view('front.checkout', compact('infor', 'pro'));
  }
}