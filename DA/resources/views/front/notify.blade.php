@extends('front.layouts.layout')

@section('content')
<div class="jumbotron jumbotron-fluid mt-5 mb-5">
    <div class="container">
        <h1 class="display-4">BẠN ĐÃ ĐẶT HÀNG THÀNH CÔNG!</h1>
        <p class="lead">Cảm ơn bạn đã mua hàng của chúng tôi.</p>
    </div>
</div>
@section('feed')

<div class="main-instagram owl-carousel owl-theme">
    @foreach($pro as $item)
    <div class="item">
        <div class="ins-inner-box">
            <img style="height: 200px;" src="{{asset('uploads/images/product/'.$item->image)}}" alt="" />
            <div class="hov-in">
                <a href="{{route('index.getProduct')}}"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
    @endforeach
</div>

@endsection
@endsection