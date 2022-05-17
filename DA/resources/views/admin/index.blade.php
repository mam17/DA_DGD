@extends('admin.layouts.master')

@section('head')
    <title>Trang chủ</title>
@endsection

@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Trang chủ</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-yellow">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="huge" style="font-size: 20px; text-align: center;">{{count($category)}} DANH MỤC</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.category.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;"> {{count($product)}} SẢN PHẨM</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.product.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;"> {{count($brand)}} THƯƠNG HIỆU</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.brand.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;">{{count($blog)}} BÀI VIẾT</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.blog.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading" style="background-color: brown;">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;">{{count($slide)}} SLIDE</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.slide.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading" style="background-color: coral;">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;">{{count($order)}} ĐƠN HÀNG</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.checkout.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading" style="background-color: dimgrey;">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;">{{count($staff)}} NHÂN VIÊN</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.checkout.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading" style="background-color: darkorange;">
                        <div class="row">
                            <div class="huge" style="font-size: 20px;text-align: center;">{{count($customer)}} TK KHÁCH HÀNG</div>
                            <div></div>
                        </div>
                    </div>
                    <a href="{{ route('admin.checkout.index') }}">
                        <div class="panel-footer">
                            <span class="pull-left">Truy cập</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection