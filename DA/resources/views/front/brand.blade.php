@extends('front.layouts.page')
@section('head')
<title>{{$bra->name_bra}}</title>
@endsection

@section('title')
<div class="row">
    <div class="col-lg-12">
        <h2>Sản phẩm</h2>
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{route('index')}}">Trang chủ</a></li>
            <li class="breadcrumb-item active">Sản phẩm/ {{$bra->name_bra}}</li>
        </ul>
    </div>
</div>
@endsection

@section('content-pro')
<div class="product-categorie-box">
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
            <div class="row">
                @if (count($bra->product) > 0)
                @foreach ($bra->product as $item)
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
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
                                    <li><a href=""
                                            data-toggle="tooltip" data-placement="right" title="View"><i
                                                class="fas fa-eye"></i></a></li>

                                </ul>
                                <a class="cart add-cart" href="#" onclick="addCart({{ $item->id }})"
                                    data-id="{{route('cart.addCart',[$item->id] )}}" >Thêm vào giỏ
                                    hàng</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4 style="text-align: center;">{{$item->name_pr}}</h4>
                            <h4 style="color: red; text-align: center;">{{$item->brand->name_bra}}</h4>
                            @if($item->discount != 0)
                            <h4><del style="color: chocolate;">{{number_format($item->price)}} VNĐ </h5>
                                    <h5>
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
                @else
                Không có sản phẩm nào
                @endif
            </div>
        </div>
        <!-- chi tiết -->
        <div role="tabpanel" class="tab-pane fade" id="list-view">
            <div class="list-view-box">
                <div class="row">
                    <?php $i = 1; ?>
                    @if (count($bra->product) > 0)
                    @foreach ($bra->product as $item)
                    @if ($i < 7) <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
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
                                        <li><a href=""
                                                data-toggle="tooltip" data-placement="right" title="View"><i
                                                    class="fas fa-eye"></i></a></li>

                                    </ul>
                                    <a class="cart add-cart" href="#" onclick="addCart({{ $item->id }})"
                                    data-id="{{route('cart.addCart',[$item->id] )}}">Thêm vào giỏ
                                        hàng</a>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                    <div class="why-text full-width">
                        <h4>{{$item->name_pr}}</h4>
                        @if($item->discount != 0)
                        <div class="row">
                            <h4 style="text-align: center;"><del
                                    style="color: chocolate;">{{number_format($item->price)}}
                                    VNĐ</h5>
                                    <h5 style="text-align: center;">
                                </del>{{number_format($item->discount)}} VNĐ</h5>
                        </div>
                        @else
                        <h5 style="text-align: center;">{{number_format($item->price)}} VNĐ</h5>
                        @endif
                        <p>{{$item->description}}</p>
                        <a class="btn hvr-hover" href="#">Thêm vào giỏ hàng</a>
                    </div>
                </div>
                @endif
                <?php $i++; ?>
                @endforeach
                @else
                Không có sản phẩm
                @endif
            </div>
        </div>
    </div>
</div>
</div>

@endsection