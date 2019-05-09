<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="/admin/index">&nbsp;&nbsp;&nbsp;&nbsp;修&nbsp;&nbsp;の&nbsp;&nbsp;店</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="/admin/index">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">主页</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="/admin/order_list">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">状态</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="/admin/cat_list">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">猫库</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="/admin/logout">
            <i class="fa fa-fw fa-sign-out"></i>
            <span class="nav-link-text">退出</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>退出</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">修の店</a>
        </li>
        <li class="breadcrumb-item active">订单</li>
      </ol>
      <!-- Area Chart Example-->
      <div class="card mb-3">
        <div class="card mb-3">
          <div class="card-header">
            <i class="fa fa-table"></i>订单列表
            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addModal" style="float: right">
              <span class="fa fa-plus"></span> 添加
            </button>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                  <th style="text-align: center"></th>
                  <th style="text-align: center">客户名</th>
                  <th style="text-align: center">手机</th>
                  <th style="text-align: center">地址</th>
                  <th style="text-align: center">猫</th>
                  <th style="text-align: center">时间</th>
                  <th style="text-align: center"></th>
                </tr>
                </thead>
                <tbody>
                  <c:forEach items="${sessionScope.orders}" var="order">
                  <tr>
                    <td style="text-align: center">${order.getOid()}</td>
                    <td style="text-align: center">${order.getOname()}</td>
                    <td style="text-align: center">${order.getOphone()}</td>
                    <td style="text-align: center">${order.getOaddress()}</td>
                    <td style="text-align: center">${order.getCat().getCname()}</td>
                    <td style="text-align: center"><fmt:formatDate value="${order.getOtime()}"/></td>
                    <td>
                      <button type="button" class="btn btn-info btn-sm" onclick="getorder(this)">
                        <span class="fa fa-pencil"></span> 修改
                      </button>
                      <button type="button" class="btn btn-danger btn-sm" onclick="deleteorder(this)">
                        <span class="fa fa-trash"></span> 删除
                      </button>
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
      </div>

      </div>
  </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2017 / More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- 退出模态框 Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">退出？</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">你确定要退出系统吗？</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
            <a class="btn btn-primary" href="/admin/logout">退出</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="${ctx}/static/vendor/jquery/jquery.min.js"></script>
    <script src="${ctx}/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${ctx}/static/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${ctx}/static/vendor/chart.js/Chart.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${ctx}/static/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${ctx}/static/js/sb-admin-charts.min.js"></script>
  </div>
  <%--修改订单模态框--%>
  <div class="modal fade" id="updatModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="myModalLabel"
              style="color: black; text-align: left; font-size: 18px;">
            修改订单信息：</h4>
          <button type="button" class="close" data-dismiss="modal"
                  aria-hidden="true">×
          </button>
        </div>
        <div class="modal-body" style="color: black;text-align: center">
          编号：<input class="Catlist" id="oid" type="text" value="" readonly="true"/><br/><br/>
          客户名：<input class="Catlist" id="name" type="text" value=""/><br/><br/>
          手机：<input class="Catlist" id="phone" type="text" value=""/><br/><br/>
          地址：<input class="Catlist" id="address" type="text" value=""/><br/><br/>
          猫：<input class="Catlist" id="cname" type="text" value=""/><br/><br/>
          时间：<input class="Catlist" id="time" type="date" value=""/><br/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-default" onclick="updataorder()">提交更改</button>
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
          <h4 class="modal-title" id="myModalLabel"
              style="color: black; text-align: left; font-size: 18px;">
            添加新的订单：</h4>
          <button type="button" class="close" data-dismiss="modal"
                  aria-hidden="true">×
          </button>

        </div>
        <div class="modal-body" style="color: black;text-align: center">
          编号：<input id="oid" type="text" value="系统自定" readonly="true"/><br/><br/>
          客户名：<input id="name" type="text" value=""/><br/><br/>
          手机：<input id="phone" type="text" value=""/><br/><br/>
          地址：<input id="address" type="text" value=""/><br/><br/>
          猫：<input id="cname" type="text" value=""/><br/><br/>
          时间：<input id="time" type="date" value=""/><br/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-default" onclick="addorder()">添加</button>
        </div>
      </div>
    </div>
  </div>

  <script type="text/javascript">
    function getorder(obj) {
      var tds = $(obj).parent().parent().find('td');
      $("#oid").val(tds.eq(0).text());
      $("#name").val(tds.eq(1).text());
      $("#phone").val(tds.eq(2).text());
      $("#address").val(tds.eq(3).text())
      $("#cname").val(tds.eq(4).text());
      $("#time").val(tds.eq(5).text());
      $('#updatModal').modal({show: true})
    }
    <!-- 这个提交更改 -->
    function updataorder() {
      var oid = $('#oid').val();
      var name = $('#name').val();
      var phone = $('#phone').val();
      var address = $('#address').val();
      var cname = $('#cname').val();
      var time = $('#time').val();
      $.ajax({
        type: "post",
        url: "/admin/updataorder",
        async: true,
        cache: false,
        data: {oid: oid, name: name, phone: phone, address: address, cname: cname, time: time},
        dataType: "json",
        success: onSuccess,
        error: onError
      })
    }
    function deleteorder(obj) {
      var tds = $(obj).parent().parent().find('td');
      var oid = tds.eq(0).text();
      if (confirm("确认要删除吗？") == true) {
        $.ajax({
          type: "post",
          url: "/admin/deleteorder",
          async: true,
          cache: false,
          data: {oid: oid},
          dataType: "json",
          success: onSuccess,
          error: onError
        })
      } else {
        return false;
      }
    }
    function addorder() {
      var name = $('#name').val();
      var phone = $('#phone').val();
      var address = $('#address').val();
      var cname = $('#cname').val();
      var time = $('#time').val();
      $.ajax({
        type: "post",
        url: "/admin/addorder",
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
        window.location.href = "${ctx}/admin/order_list";
      }
    }
    function onError(data) {
      alert(data.message);
      window.location.href = "${ctx}/admin/order_list";
    }
  </script>
</body>

</html>
