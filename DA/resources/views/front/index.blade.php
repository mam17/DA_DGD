@extends('front.layouts.layout')

@section('content')


<!-- Start Slider -->
<div id="slides-shop" class="cover-slides">
    <ul class="slides-container">
        @foreach($slide as $item)
        <li class="text-center">
            <img src="{{asset('uploads/images/slide/'.$item->image)}}" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Chào mừng bạn đên với <br> {{$item -> name_slide}}</strong></h1>
                        <p class="m-b-40"><br> {{$item->content}}</p>
                        <p><a class="btn hvr-hover" href="{{route('index.getProduct')}}">Sản phẩm</a></p>
                    </div>
                </div>
            </div>
        </li>
        @endforeach
    </ul>
    <div class="slides-navigation">
        <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
        <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
    </div>
</div>
<!-- End Slider -->

<!-- Start Products  -->
<div class="products-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>SẢN PHẨM</h1>
                    <p>Đồ gia dụng, không thể thiếu trong mọi gia đình</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu text-center">
                    <div class="button-group filter-button-group">
                        <button class="active" data-filter=".all">All</button>
                        <button data-filter=".top-featured">Nổi bật</button>
                        <button data-filter=".best-seller">Đang saller</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row special-list">
            @foreach($product as $item)
            <div class="col-lg-3 col-md-6 special-grid all">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        @if($item->discount !=0)
                        <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        @endif
                        @if($item->status != 0)
                        <div class="type-lb">
                            <p class="new">Nổi bật</p>
                        </div>
                        @endif
                        <img src="{{asset('uploads/images/product/'.$item->image)}}" style="height: 200px;"
                            class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <li><a href="{{ route('index.getProductDetail', ['product_slug' => $item->slug, 'product_id' => $item->id]) }}"
                                        data-toggle="tooltip" data-placement="right" title="View"><i
                                            class="fas fa-eye"></i></a></li>
                            </ul>
                            <a class="cart add-cart" href="#" onclick="addCart({{ $item->id }})"
                                data-id="{{route('cart.addCart',[$item->id] )}}">Thêm vào giỏ
                                hàng</a>
                        </div>
                    </div>
                    <div class="why-text">
                        <h4 style="text-align: center;">{{$item->name_pr}}</h4>
                        <h4 style="color: red; text-align: center;">{{$item->brand->name_bra}}</h4>
                        @if($item->discount != 0)
                        <h4><del style="color: chocolate;">{{number_format($item->price)}}
                                VNĐ</h5>
                                <h5 style="text-align: center;">
                            </del>{{number_format($item->discount)}} VNĐ</h5>
                            @else
                            <div style="padding-top: 33px;">
                                <h5>{{number_format($item->price)}} VNĐ</h5>
                            </div>
                            @endif
                    </div>
                </div>
            </div>
            @endforeach

            @foreach($sale as $item)
            <div class="col-lg-3 col-md-6 special-grid best-seller">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        <img src="{{asset('uploads/images/product/'.$item->image)}}" style="height: 200px;"
                            class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <li><a href="{{ route('index.getProductDetail', ['product_slug' => $item->slug, 'product_id' => $item->id]) }}"
                                        data-toggle="tooltip" data-placement="right" title="View"><i
                                            class="fas fa-eye"></i></a></li>
                            </ul>
                            <a class="cart add-cart" href="#" onclick="addCart({{ $item->id }})"
                                data-id="{{route('cart.addCart',[$item->id] )}}">Thêm vào giỏ
                                hàng</a>àng</a>
                        </div>
                    </div>
                    <div class="why-text">
                        <h4 style="text-align: center;">{{$item->name_pr}}</h4>
                        <h4 style="color: red; text-align: center;">{{$item->brand->name_bra}}</h4>
                        @if($item->discount != 0)
                        <h4><del style="color: chocolate;">{{number_format($item->price)}}
                                VNĐ</h5>
                                <h5 style="text-align: center;">
                            </del>{{number_format($item->discount)}} VNĐ</h5>
                            @else
                            <div style="padding-top: 33px;">
                                <h5>{{number_format($item->price)}} VNĐ</h5>
                            </div>
                            @endif
                    </div>
                </div>
            </div>
            @endforeach

            @foreach($status as $item)
            <div class="col-lg-3 col-md-6 special-grid top-featured">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <div class="type-lb">
                            <p class="new">Nổi bật</p>
                        </div>
                        <img src="{{asset('uploads/images/product/'.$item->image)}}" style="height: 200px;"
                            class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <li><a href="{{ route('index.getProductDetail', ['product_slug' => $item->slug, 'product_id' => $item->id]) }}"
                                        data-toggle="tooltip" data-placement="right" title="View"><i
                                            class="fas fa-eye"></i></a></li>
                            </ul>
                            <a class="cart add-cart" href="#" onclick="addCart({{ $item->id }})"
                                data-id="{{route('cart.addCart',[$item->id] )}}">Thêm vào giỏ
                                hàng</a>
                        </div>
                    </div>
                    <div class="why-text">
                        <h4 style="text-align: center;">{{$item->name_pr}}</h4>
                        <h4 style="color: red; text-align: center;">{{$item->brand->name_bra}}</h4>
                        @if($item->discount != 0)
                        <h4><del style="color: chocolate;">{{number_format($item->price)}}
                                VNĐ</h5>
                                <h5 style="text-align: center;">
                            </del>{{number_format($item->discount)}} VNĐ</h5>
                            @else
                            <div style="padding-top: 33px;">
                                <h5>{{number_format($item->price)}} VNĐ</h5>
                            </div>
                            @endif
                    </div>
                </div>
            </div>
            @endforeach

        </div>

        <!-- End Products  -->

        <!-- Start Blog  -->

        <div class="latest-blog">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>BÀI VIẾT</h1>
                            <p>Tin tức mới nhất của chúng tôi</p>
                        </div>
                    </div>
                </div>
                <div class="featured-products-box owl-carousel owl-theme">
                    <?php $i = 1; ?>
                    @foreach($blog as $item)
                    @if ($i < 5) <div class="item">
                        <div class="products-single fix">
                            <div class="hover-team">
                                <div class="our-team"> <a
                                        href="{{ route('index.getBlog',['blog_id'=>$item->id, 'blog_slug'=>$item->slug]) }}"><img
                                            src="{{asset('uploads/images/blog/'.$item->image)}}" style="height: 250px;"
                                            alt="" /></a>
                                    <div class="team-content">
                                        <h3 class="title">{{$item->title}}</h3>
                                    </div>
                                    <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                                </div>
                                <div class="team-description">
                                    <p>{{$item->intro}}</p>
                                </div>
                                <hr class="my-0">
                            </div>
                        </div>
                </div>
                @endif
                <?php $i++; ?>
                @endforeach
            </div>
        </div>
        <!-- End Blog  -->
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