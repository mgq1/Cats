<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/roboto.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/font-awesome.min.css">
    <title>修の猫咖</title>

</head>
<body class="cm-login">

<div class="text-center" style="padding:90px 0 30px 0;background:#fff;border-bottom:1px solid #ddd">
    <img src="${ctx}/img/1.png" width="300" height="90">
</div>

<div class="col-sm-6 col-md-4 col-lg-3" style="margin:40px auto; float:none;">
    <form id="login_from" method="post">
        <div class="col-xs-12">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-fw fa-user"></i></div>
                    <input type="text" name="username" class="form-control" placeholder="用户名">
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-fw fa-lock"></i></div>
                    <input type="password" name="password" class="form-control" placeholder="密码">
                </div>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="checkbox"><label><input type="checkbox">记住我</label></div>
            <a href="${ctx}/index">点我</a>
        </div>
        <div class="col-xs-6">
            <button type="button" onclick="login()" class="btn btn-block btn-gray" id="send">登陆</button>
        </div>
    </form>
</div>
<script src="${ctx}/js/lib/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
    //请求成功后回调方法
    function onSuccess(data) {

        if (200 == data.state) {
            alert("登陆成功");
            window.location.href = "${ctx}/index";
        }
    }

    function onError(msg) {
        alert("登陆失败");
    }

    function login() {
        var username = $("[name=username]").val();
        var password = $("[name=password]").val();
        $.ajax({
            url: "/user/login",
            type: "post",
            async: true,
            cache: false,
            data: {username: username, password: password},
            dataType: "json",
            success: onSuccess,
            error: onError
        })

    }
</script>

</body>


</html>
