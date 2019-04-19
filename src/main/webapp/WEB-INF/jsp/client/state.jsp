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
                            <li><a href="/logout" class="sf-lock-open">退出系统</a></li>
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
                            <a style="cursor:default;"><strong>${result.data.username}</strong></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> 个人信息</a>
                        </li>
                        <li>
                            <a href="/logout"><i class="fa fa-fw fa-sign-out"></i>登出</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div>

        </div>
        <script src="jsp/client/assets/js/lib/jquery-2.1.3.min.js"></script>
    </body>
</html>