@extends('admin.layouts.master')

@section('head')
<title>Thống kê</title>
@endsection

@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Thống kê</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Thống kê
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <i class="fa fa-bar-chart-o fa-fw"></i> Thống kê tổng tiền hoá đơn xuất theo ngày</b>
                                    </div>
                                    <div class="panel-body">
                                        <div class="chartWrapper">
                                            <div class="chartAreaWrapper">
                                                <canvas id="myChart"></canvas>
                                                <script src="{{asset('front-end/admin/js/chart.js')}}"></script>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <i class="fa fa-bar-chart-o fa-fw"></i> Thống kê số lượng sản phẩm theo Loại sản phẩm</b>
                                    </div>
                                    <div class="panel-body">
                                        <div class="chartWrapper">
                                            <div class="chartAreaWrapper">
                                                <canvas id="myChart2"></canvas>
                                                <script src="{{asset('front-end/admin/js/chart.js')}}"></script>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
</div>

@endsection