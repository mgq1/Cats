<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
        <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap-clearmin.min.css">
        <link rel="stylesheet" type="text/css" href="${ctx}/css/roboto.css">
        <link rel="stylesheet" type="text/css" href="${ctx}/css/material-design.css">
        <link rel="stylesheet" type="text/css" href="${ctx}/css/small-n-flat.css">
        <link rel="stylesheet" type="text/css" href="${ctx}/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${ctx}/css/summernote.css">
        <title>修の店</title>
    </head>
    <body class="cm-no-transition cm-1-navbar">
        <div id="cm-menu">
            <nav class="cm-navbar cm-navbar-gray">
                <div class="cm-flex"><a href="/index" class="navbar-brand">修の店</a></div>
                <div class="btn btn-gray md-menu-white" data-toggle="cm-menu"></div>
            </nav>
            <div id="cm-menu-content">
                <div id="cm-menu-items-wrapper">
                    <div id="cm-menu-scroller">
                        <ul class="cm-menu-items">
                            <li><a href="/index" class="sf-house">主页</a></li>
                            <li><a href="state.html" class="sf-dashboard">业务情况</a></li>
                            <li>
                                <a class="sf-cat" href="/cat_list">猫咪</a>
                            </li>
                            <li  class="active"><a href="/order_list" class="sf-notepad">订单</a></li>
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
                    <h1>订单</h1> 
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
                <div class="panel panel-default">
                    
                </div>
            </div>
            <footer class="cm-footer"><span class="pull-left">修の温馨猫舍</span><span class="pull-right">&copy; 修修</span></footer>
        </div>
        <script src="${ctx}/js/lib/jquery-2.1.3.min.js"></script>
        <script src="${ctx}/js/jquery.mousewheel.min.js"></script>
        <script src="${ctx}/js/jquery.cookie.min.js"></script>
        <script src="${ctx}/js/fastclick.min.js"></script>
        <script src="${ctx}/js/bootstrap.min.js"></script>
        <script src="${ctx}/js/clearmin.min.js"></script>
        <script src="${ctx}/js/summernote.min.js"></script>
        <script src="${ctx}/js/demo/notepad.js"></script>



    </body>
</html>