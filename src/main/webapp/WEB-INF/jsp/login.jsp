<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>修の咖</title>
  <!-- Bootstrap core CSS-->
  <link href="${ctx}/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${ctx}/static/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${ctx}/static/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">登陆</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">用户名</label>
            <input class="form-control" name="username" type="text" placeholder="用户名">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">密码</label>
            <input class="form-control" name="password" type="password" placeholder="密码">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> 记住我</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" onclick="login()">登陆</a>
        </form>
        <div class="text-center">
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="${ctx}/static/vendor/jquery/jquery.min.js"></script>
  <script src="${ctx}/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${ctx}/static/vendor/jquery-easing/jquery.easing.min.js"></script>

  <script type="text/javascript">
      //请求成功后回调方法
      function onSuccess(data) {
          if (200 == data.state) {
              alert("登陆成功");
              window.location.href = "${ctx}/admin/index";
          }
      }
      function onError(msg) {
          alert("登陆失败");
      }
      function login() {
          var username = $("[name=username]").val();
          var password = $("[name=password]").val();
          $.ajax({
              url: "/login",
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
