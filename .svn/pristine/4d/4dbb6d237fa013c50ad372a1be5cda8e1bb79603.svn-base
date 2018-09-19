<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css">
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>

</head>

<body class="">
<% pageContext.include("/framework.jsp"); %>
<% Date time = new Date(); %>
	<!--<![endif]-->
	<div class="content">

		<div class="header">
			<div class="stats">
				<p class="stat">
				<c:set var="day">
					<fmt:formatDate value="<%= new Date() %>" pattern="dd"/>
				</c:set>
					<span class="number">${day }</span>日
				</p>
				<p class="stat">
				<c:set var="month">
					<fmt:formatDate value="<%= new Date() %>" pattern="MM"/>
				</c:set>
					<span class="number">${month }</span>月
				</p>
				<p class="stat">
				<c:set var="year">
					<fmt:formatDate value="<%= new Date() %>" pattern="yyyy"/>
				</c:set>
					<span class="number">${year }</span>年
				</p>
			</div>

			<h1 class="page-title">首页</h1>
		</div>

		<ul class="breadcrumb">
			<li class="active">首页</li>
		</ul>

		<div class="container-fluid">
				<div class="row-fluid">

					<div class="block">
						<a href="#page-stats" class="block-heading" data-toggle="collapse">统计数据</a>
						<div id="page-stats" class="block-body collapse in">

							<div class="stat-widget-container">
								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">${requestScope.totalCountUser }</p>
										<a href="/EShopManager/accounts/query">
											<p class="detail">用户数</p>
										</a>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">$${requestScope.totalOrderPrice }</p>
										<p class="detail">营业额</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">${requestScope.totalCountUserIsOnline }</p>
										<p class="detail">在线用户数</p>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">540</p>
										<p class="detail">pv</p>
									</div>
								</div>

								

							</div>
						</div>
					</div>
				</div>
				
				<div class="row-fluid">

					<div class="block">
						<a href="#page-order-stats" class="block-heading" data-toggle="collapse">订单统计信息</a>
						<div id="page-order-stats" class="block-body collapse in">

							<div class="stat-widget-container">
								<div class="stat-widget">
									<div class="stat-button">
										<p class="title"><font color="orange">${requestScope.totalCountStatusIsPay }</font></p>
										<a href="/EShopManager/orders/query.action?type=1">
											<p class="detail">待发货订单</p>
										</a>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">${requestScope.totalCountStatusNoPay }</p>
										<a href="/EShopManager/orders/query.action?type=2">
											<p class="detail">待付款订单</p>
										</a>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">${requestScope.totalCountStatusIsReceive }</p>
										<a href="/EShopManager/orders/query.action?type=3">
											<p class="detail">已完成订单</p>
										</a>
									</div>
								</div>

								<div class="stat-widget">
									<div class="stat-button">
										<p class="title">${requestScope.totalCountStatusIsCancel }</p>
										<a href="/EShopManager/orders/query.action?type=4">
											<p class="detail">已取消订单</p>
										</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="row-fluid">
					<div class="block span6">
						<a href="#tablewidget" class="block-heading" data-toggle="collapse">用户统计
							
						</a>
						<div id="tablewidget" class="block-body collapse in">
							<table class="table">
								<thead>
									<tr>
										<th>用户名</th>
										<th>邮箱</th>
										<th>性别</th>
										<th>状态</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${requestScope.userlist }" var="user" >
										<tr>
											<td>${user.userName }</td>
											<td>${user.userEmail }</td>
											<td>${user.userSex }</td>
											<td>${user.isActivated==1?"已激活":"末激活" }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<p>
								<a href="/EShopManager/accounts/query.action">More...</a>
							</p>
						</div>
					</div>
					<div class="block span6">
						<a href="#tablePV" class="block-heading" data-toggle="collapse">ip统计
						
						</a>
						<div id="tablePV" class="block-body collapse in">
							<table class="table">
								<thead>
									<tr>
										<th>ip地址</th>
										<th>访问次数</th>
									</tr>
								</thead>
								<tbody>
									
										<tr>
											<td>127.0.0.1</td>
											<td>603</td>
										</tr>
									
										<tr>
											<td>0:0:0:0:0:0:0:1</td>
											<td>60</td>
										</tr>
									
										<tr>
											<td>120.236.2.62</td>
											<td>117</td>
										</tr>
									
										<tr>
											<td>116.25.227.19</td>
											<td>3</td>
										</tr>
									
										<tr>
											<td>182.61.33.130</td>
											<td>32</td>
										</tr>
									
								</tbody>
							</table>
							<p>
								<a href="/EShopManager/iplist">More...</a>
							</p>
						</div>
					</div>
				</div>
		<% pageContext.include("/footer.jsp"); %>
		</div>
	</div>
</body>
</html>


