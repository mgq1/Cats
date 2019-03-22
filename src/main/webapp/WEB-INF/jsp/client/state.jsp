<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <link rel="stylesheet" type="text/css" href="jsp/client/assets/css/bootstrap-clearmin.min.css">
        <link rel="stylesheet" type="text/css" href="jsp/client/assets/css/roboto.css">
        <link rel="stylesheet" type="text/css" href="jsp/client/assets/css/material-design.css">
        <link rel="stylesheet" type="text/css" href="jsp/client/assets/css/small-n-flat.css">
        <link rel="stylesheet" type="text/css" href="jsp/client/assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="jsp/client/assets/css/c3.min.css">
        <title>修の店</title>
    </head>
    <body class="cm-no-transition cm-2-navbar">
        <div id="cm-menu">
            <nav class="cm-navbar cm-navbar-gray">
                <div class="cm-flex"><a href="index.html" class="cm-logo"></a></div>
                <div class="btn btn-gray md-menu-white" data-toggle="cm-menu"></div>
            </nav>
            <div id="cm-menu-content">
                <div id="cm-menu-items-wrapper">
                    <div id="cm-menu-scroller">
                        <ul class="cm-menu-items">
                            <li><a href="index.html" class="sf-house">主页</a></li>
                            <li class="active"><a href="dashboard-sales.html" class="sf-dashboard">业务情况</a></li>
                            <li>
                                <a class="sf-cat" href="cat_list.html">猫咪</a>
                            </li>
                            <li><a href="notepad.html" class="sf-notepad">订单</a></li>
                            <li><a href="login.html" class="sf-lock-open">退出系统</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <header id="cm-header">
            <nav class="cm-navbar cm-navbar-gray">
                <div class="btn btn-gray md-menu-white hidden-md hidden-lg" data-toggle="cm-menu"></div>
                <div class="cm-flex">
                    <h1>业务情况</h1> 
                </div>
                <div class="dropdown pull-right">
                    <button class="btn btn-gray md-account-circle-white" data-toggle="dropdown"></button>
                    <ul class="dropdown-menu">
                        <li class="disabled text-center">
                            <a style="cursor:default;"><strong>最帅的杨修生</strong></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> 个人信息</a>
                        </li>
                        <li>
                            <a href="login.html"><i class="fa fa-fw fa-sign-out"></i>登出</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div id="global">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">C3 Gauge</div>
                            <div class="panel-body">
                                <div id="d1-c1" style="height:150px"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">C3 Gauge</div>
                            <div class="panel-body">
                                <div id="d1-c2" style="height:150px"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">C3 Gauge</div>
                            <div class="panel-body">
                                <div id="d1-c3" style="height:150px"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">C3 Bars</div>
                    <div class="panel-body">
                        <div id="d1-c5" style="height:320px"></div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">C3 Splines</div>
                    <div class="panel-body">
                        <div id="d1-c4" style="height:320px"></div>
                    </div>
                </div>
                <div class="alert alert-info shadowed" role="alert"> <i class="fa fa-fw fa-info-circle"></i> C3.js chart library by Masayuki Tanaka (MIT): <a href="http://c3js.org/">http://c3js.org/</a> </div>
                <div class="panel panel-default">
                    <div class="panel-heading">Native progress bars</div>
                    <table class="table table-bordered">
                        <tr>
                            <td style="white-space:nowrap">Nemo enim ipsam</td>
                            <td>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger" style="width:3%"></div>
                                </div>
                            </td>
                            <td>3%</td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap">Neque porro quisquam</td>
                            <td style="width:100%">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning" style="width:9%"></div>
                                </div>
                            </td>
                            <td>9%</td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap">Et quoniam inedia</td>
                            <td>
                                <div class="progress">
                                    <div class="progress-bar" style="width:12%"></div>
                                </div>
                            </td>
                            <td>12%</td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap">Catoni anteponas</td>
                            <td>
                                <div class="progress">
                                    <div class="progress-bar" style="width:38%"></div>
                                </div>
                            </td>
                            <td>38%</td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap">Haec dum oriens diu perferret</td>
                            <td style="width:100%">
                                <div class="progress">
                                    <div class="progress-bar" style="width:47%"></div>
                                </div>
                            </td>
                            <td>47%</td>
                        </tr>
                        <tr>
                            <td style="white-space:nowrap">Nam libero tempore</td>
                            <td>
                                <div class="progress">
                                    <div class="progress-bar" style="width:73%"></div>
                                </div>
                            </td>
                            <td>73%</td>
                        </tr>
                    </table>
                </div>
            </div>
            <footer class="cm-footer"><span class="pull-left">Connected as John Smith</span><span class="pull-right">&copy; PAOMEDIA SARL</span></footer>
        </div>
        <script src="jsp/client/assets/js/lib/jquery-2.1.3.min.js"></script>
        <script src="jsp/client/assets/js/jquery.mousewheel.min.js"></script>
        <script src="jsp/client/assets/js/jquery.cookie.min.js"></script>
        <script src="jsp/client/assets/js/fastclick.min.js"></script>
        <script src="jsp/client/assets/js/bootstrap.min.js"></script>
        <script src="jsp/client/assets/js/clearmin.min.js"></script>
        <script src="jsp/client/assets/js/lib/d3.min.js"></script>
        <script src="jsp/client/assets/js/lib/c3.min.js"></script>
        <script src="jsp/client/assets/js/demo/dashboard.js"></script>
    </body>
</html>