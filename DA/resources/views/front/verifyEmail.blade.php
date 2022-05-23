@extends('front.layouts.layout')

@section('content')
@if (session('error'))
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        {{ session('error') }}
    </div>
    @elseif (session('message'))
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        {{ session('message') }}
    </div>
    
    @endif
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Gửi mã xác minh tài khoản</h3>
                </div>
                <div class="card-body">
                    <form action="{{ URL::to('verification-emai-customer') }}" method="POST" role="form">
					@csrf        
                        <div class="input-group form-group">
                                <lable>Nhập email đăng ký để nhận mã xác thực</lable>                                
                            </div>                       
                        <input type="text" class="form-control" placeholder="Nhập email đăng ký tài khoản" name="email">
                      
                        <div class="form-group">
                        <input type="submit" value="Confirm" class="btn mt-5 text-center login_btn">
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        Bạn đã có mã xác thực?<a href="{{route('index.register')}}">Đăng ký</a>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
@endsection