<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\User;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    
    public function index()
    {
        // $user = User::where('role', '=', 3)->get();
        // $viewData = [
        //     'user' => $user,
        // ];
        // return view('admin.user.user_list', $viewData);
        $customer = Customer::all();
        return view('admin.user.user_list', compact('customer'));

    }

}