<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"/>
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
</head>

<body class="">
	<% pageContext.include("/framework.jsp"); %>
	<div class="content">
		<div class="header">
			<h1 class="page-title">订单管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/orders/query">订单管理</a> <span class="divider">/</span></li>
			<li class="active">发货单列表</li>
		</ul>

		<div class="container-fluid">

			<div class="row-fluid">

				<span>共有 <b>${requestScope.totalCount }</b> 条记录
				</span>

				<div class="well">

					<table class="table">
						<thead>
							<tr id="theTableTitle">
								<th>发货单流水号</th>
								<th>订单号</th>
								<th>下单时间</th>
								<th>收货人</th>
								<th>发货时间</th>
								<th>状态</th>
								<th>操作人</th>
								<th>操作</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${requestScope.orderlist }" var="order">
								<tr>
									<td>${order.orderId }</td>
									<td>${order.orderId }</td>
									<td><a href="#"><fmt:formatDate
												value="${order.orderDate }" pattern="yyyy-MM-dd  HH:mm:ss" /></a></td>
									<td>${order.person }</td>
									<td>${order.orderId }</td>
									<td>${order.status>0?"正常":"<span style='color: red'>已取消</span>"}
										, ${order.statusPay>0?"已付款":"未付款"} ,
										${order.statusSend>0?"已发货（待收货），配货中":"未发货"} ,
										${order.statusReceive>0?"已收货":"未收货"}</td>
									<td>${order.orderId }</td>
									<td><a
										href="/EShopManager/books/queryinfo.action?book_id="
										title="编辑"><i class="icon-pencil"></i></a> <a
										href="javascript:deleteClick()" title="删除"><i
											class="icon-remove"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
				<div class="pagination pagination myul">
					<c:set var="urlstr"
						value="${pageContext.request.contextPath }/orders/sendlist?currentPage=" />
					<ul>
						<c:if test="${requestScope.currentPage==1}">
							<li class="disabled"><a href='#'>«首页</a><a href='#'>上一页</a></li>
						</c:if>
						<c:if test="${requestScope.currentPage>1}">
							<li><a href='${urlstr }1'>«首页</a> <a
								href='${urlstr }${requestScope.currentPage-1}'>上一页</a></li>
						</c:if>

						<c:forEach var="i" begin="${requestScope.beginPage }"
							end="${requestScope.endPage }">
							<li class='${requestScope.currentPage==i?"active":"" }'><a
								href='${urlstr }${i }'>${i }</a></li>
						</c:forEach>

						<c:if test="${requestScope.currentPage==requestScope.totalPage}">
							<li class="disabled"><a href='#'>下一页</a><a href='#'>尾页»</a></li>
						</c:if>
						<c:if test="${requestScope.currentPage<requestScope.totalPage}">
							<li><a href='${urlstr }${requestScope.currentPage+1 }'>下一页</a>
								<a href='${urlstr }${requestScope.totalPage }'>尾页»</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<% pageContext.include("/footer.jsp"); %>
		</div>


	</div>
</body>
</html>


