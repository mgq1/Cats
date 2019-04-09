<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>修の店</title>
</head>
<style type="text/css">
    .cattable {
        text-align: center;
    }
</style>
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
                    <li class="active">
                        <a class="sf-cat" href="/cat_list">猫咪</a>
                    </li>
                    <li><a href="/order_list" class="sf-notepad">订单</a></li>
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
            <h1>修の猫咪</h1>
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
<div id="global">
    <style> .demo-icons .col-lg-2 {
        padding: 10px;
        border: 1px solid transparent;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        border-radius: 2px;
    }

    .col-lg-2:hover {
        background: #f5f5f5;
        border-color: #eee;
    }
    </style>
    <div class="container-fluid">
        <div class="panel panel-default demo-icons">
            <div class="panel-heading">
                猫咪列表
                <input type="button" class="btn btn-info" data-toggle="modal" data-target="#addModal" value="添加" style="float: right"/>
            </div>
            <div class="cattable">
                <table class="table table-hover">
                    <thead>
                    <tr style="text-align: center;">
                        <th>编号</th>
                        <th>名字</th>
                        <th>品种</th>
                        <th>性别</th>
                        <th>年龄</th>
                        <th>生日</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sessionScope.cats}" var="cat">
                        <tr>
                            <td>${cat.getCid()}</td>
                            <td>${cat.getCname()}</td>
                            <td>${cat.getCvariety()}</td>
                            <td>${cat.getCgender()}</td>
                            <td>${cat.getCage()}</td>
                            <td><fmt:formatDate value="${cat.getCbirthday()}"/></td>
                            <td>
                                <input type="button" class="btn btn-success" onclick="opend(this)" value="修改"/>
                                <input type="button" class="btn btn-danger" onclick="deletecat(this) " id="" value="删除"/>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<%--修改猫咪模态框--%>

<div class="modal fade" id="updatModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel"
                    style="color: black; text-align: left; font-size: 18px;">
                    修改猫咪信息：</h4>
            </div>
            <div class="modal-body" style="color: black;text-align: center">
                编号：<input class="Catlist" id="id" type="text" value="" readonly="true"/><br/><br/>
                名字：<input class="Catlist" id="name" type="text" value=""/><br/><br/>
                品种：<input class="Catlist" id="variety" type="text" value=""/><br/><br/>
                性别：<input class="Catlist" id="gender" type="text" value=""/><br/><br/>
                年龄：<input class="Catlist" id="age" type="text" value=""/><br/><br/>
                生日：<input class="Catlist" id="birthday" type="date" value=""/><br/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-default" onclick="update()">提交更改</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal -->
</div>
<%--增加猫咪模态框--%>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
     data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel"
                    style="color: black; text-align: left; font-size: 18px;">
                    添加猫咪信息：</h4>
            </div>
            <div class="modal-body" style="color: black;text-align: center">
                编号：<input id="cid" type="text" value="系统自定" readonly="true"/><br/><br/>
                名字：<input id="cname" type="text" value=""/><br/><br/>
                品种：<input id="cvariety" type="text" value=""/><br/><br/>
                性别：<input id="cgender" type="text" value=""/><br/><br/>
                年龄：<input id="cage" type="text" value=""/><br/><br/>
                生日：<input id="cbirthday" type="date" value=""/><br/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-default" onclick="addcat()">添加</button>
            </div>
        </div>
    </div>
</div>
<script src="${ctx}/js/lib/jquery-2.1.3.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function opend(obj) {
        var tds = $(obj).parent().parent().find('td');
        $("#id").val(tds.eq(0).text());
        $("#name").val(tds.eq(1).text());
        $("#variety").val(tds.eq(2).text());
        $("#gender").val(tds.eq(3).text())
        $("#age").val(tds.eq(4).text());
        $("#birthday").val(tds.eq(5).text());
        $('#updatModal').modal({show: true})
    }

    <!-- 这个提交更改 -->
    function update() {
        var cid = $('#id').val();
        var cname = $('#name').val();
        var cvariety = $('#variety').val();
        var cgender = $('#gender').val();
        var cage = $('#age').val();
        var cbirthday = $('#birthday').val();
        alert(cbirthday);
        $.ajax({
            type: "post",
            url: "/user/update",
            async: true,
            cache: false,
            data: {cid: cid, cname: cname, cvariety: cvariety, cgender: cgender, cage: cage, cbirthday: cbirthday},
            dataType: "json",
            success: onSuccess,
            error: onError
        })
    }

    function deletecat(obj) {
        var tds = $(obj).parent().parent().find('td');
        var cid = tds.eq(0).text();
        if (confirm("确认要删除吗？") == true) {
            $.ajax({
                type: "post",
                url: "/user/delete",
                async: true,
                cache: false,
                data: {cid: cid},
                dataType: "json",
                success: onSuccess,
                error: onError
            })
        } else {
            return false;
        }

    }

    function addcat() {
        var cname = $('#cname').val();
        var cvariety = $('#cvariety').val();
        var cgender = $('#cgender').val();
        var cage = $('#cage').val();
        var cbirthday = $('#cbirthday').val();
        alert(cbirthday);
        $.ajax({
            type: "post",
            url: "/user/addcat",
            async: true,
            cache: false,
            data: {cname: cname, cvariety: cvariety, cgender: cgender, cage: cage,cbirthday:cbirthday},
            dataType: "json",
            success: onSuccess,
            error: onError
        })
    }

    function onSuccess(data) {
        if (200 == data.state) {
            alert(data.message);
            window.location.href = "${ctx}/cat_list";
        }
    }

    function onError(data) {
        alert(data.message);
        window.location.href = "${ctx}/cat_list";
    }
</script>
</body>
</html>