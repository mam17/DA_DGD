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
                            <div class="huge" style="font-size: 25px; text-align: center;">QUẢN LÝ DANH MỤC</div>
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
                            <div class="huge" style="font-size: 25px;text-align: center;">QUẢN LÝ SẢN PHẨM</div>
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
                            <div class="huge" style="font-size: 25px;text-align: center;">QUẢN LÝ THƯƠNG HIỆU</div>
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
                            <div class="huge" style="font-size: 25px;text-align: center;">QUẢN LÝ BÀI VIẾT</div>
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
                    <div class="panel-heading">
                        <div class="row">
                            <div class="huge" style="font-size: 25px;text-align: center;">QUẢN LÝ SLIDE</div>
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
        </div>
    </div>
</div>

@endsection