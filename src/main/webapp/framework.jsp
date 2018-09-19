<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/stylesheets/theme.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath }/static/lib/font-awesome/css/font-awesome.css">

</head>
<body class="">
	<div class="navbar">
		<div class="navbar-inner">
			<ul class="nav pull-right">

				<li id="fat-menu" class="dropdown"><a href="#" role="button"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="icon-user"></i> Jack Smith <i class="icon-caret-down"></i>
				</a>

					<ul class="dropdown-menu">
						<li><a tabindex="-1" href="#">My Account</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
						<li class="divider visible-phone"></li>
						<li><a tabindex="-1" href="sign-in.html">Logout</a></li>
					</ul></li>

			</ul>
			<a class="brand" href="${pageContext.request.contextPath }/index"><span class="first">Your</span>
				<span class="second">Company</span></a>
		</div>
	</div>




	<div class="sidebar-nav">
		<a href="${pageContext.request.contextPath }/index" class="nav-header"><i
			class="icon-comment"></i>首页</a> <a href="#book-menu" class="nav-header"
			data-toggle="collapse"><i class="icon-dashboard"></i>图书管理</a>
		<ul id="book-menu" class="nav nav-list collapse">

			<li class="active"><a href="${pageContext.request.contextPath }/books/query">查看图书信息</a></li>
			<li><a href="${pageContext.request.contextPath }/books/goAdd">添加图书信息</a></li>
			<li><a href="${pageContext.request.contextPath }/books/selectrecycle">回收站</a></li>

		</ul>
		
		<a href="#ad-menu" class="nav-header" data-toggle="collapse"><i
			class="icon-dashboard"></i>促销管理</a>
		<ul id="ad-menu" class="nav nav-list collapse">
			<li><a
				href="${pageContext.request.contextPath }/promotion/adimg">首页轮播</a></li>
			<li><a
				href="${pageContext.request.contextPath }/sales/selectAllSales">公告板</a></li>
		</ul>

		<a href="#type-menu" class="nav-header" data-toggle="collapse"><i
			class="icon-briefcase"></i>分类管理</a>
		<ul id="type-menu" class="nav nav-list collapse">
			<li><a href="${pageContext.request.contextPath }/type/selectAllType">分类列表管理</a></li>
		</ul>

		<a href="#order-menu" class="nav-header" data-toggle="collapse"> <i
			class="icon-legal"></i>订单管理 <span class="label label-info">+3</span>
		</a>
		<ul id="order-menu" class="nav nav-list collapse">
			<li><a href="${pageContext.request.contextPath }/orders/query">订单列表</a></li>
			<li><a
				href="${pageContext.request.contextPath }/orders/sendlist">发货单列表</a></li>
			<li><a
				href="${pageContext.request.contextPath }/orders/returnslist">退货单列表</a></li>
		</ul>

		<a href="#account-menu" class="nav-header" data-toggle="collapse">
			<i class="icon-legal"></i>会员管理 <span class="label label-info">+3</span>
		</a>
		<ul id="account-menu" class="nav nav-list collapse">
			<li><a
				href="${pageContext.request.contextPath }/accounts/query">查看会员信息</a></li>
			<li><a href="${pageContext.request.contextPath }/accounts/add">添加会员</a></li>
		</ul>

		<a href="#stat-menu" class="nav-header collapsed"
			data-toggle="collapse"> <i class="icon-legal"></i>报表统计
		</a>
		<ul id="stat-menu" class="nav nav-list collapse" style="height: 0px;">
			<li><a
				href="${pageContext.request.contextPath }/statcustomer">客户统计</a></li>
			<li><a href="${pageContext.request.contextPath }/statsales">销售概况</a></li>
			<li><a
				href="${pageContext.request.contextPath }/statbooktop">图书销售排行</a></li>
		</ul>

		<a href="#setting-menu" class="nav-header collapsed"
			data-toggle="collapse"> <i class="icon-legal"></i>系统设置
		</a>
		<ul id="setting-menu" class="nav nav-list collapse"
			style="height: 0px;">
			<li><a
				href="${pageContext.request.contextPath }/settingarea">地区列表</a></li>
			<li><a
				href="${pageContext.request.contextPath }/settingemail">设置发件邮箱</a></li>
			<li><a
				href="${pageContext.request.contextPath }/settingpwdsafe">设置密保问题</a></li>
		</ul>
		
		<a href="#permission-menu" class="nav-header" data-toggle="collapse"> <i
			class="icon-legal"></i>权限管理
		</a>
		<ul id="permission-menu" class="nav nav-list collapse">

			<li><a href="${pageContext.request.contextPath }/userAfter">用户列表</a></li>
			<li><a href="${pageContext.request.contextPath }/selectrRole">角色列表</a></li>
			<li><a href="${pageContext.request.contextPath }/selectRight">权限列表</a></li>

		</ul>

	</div>
</body>
<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/static/js/common.js"></script>
<script type="text/javascript">
	$("#fat-menu").click(function(){
		var classStatus = $(this).attr("class");
		if (classStatus=="dropdown") {
			$(this).attr("class","dropdown open");
		} else {
			$(this).attr("class","dropdown");
		}
	})
</script>
</html>


