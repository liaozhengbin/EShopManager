<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<div class="content">
		<div class="header">
			<h1 class="page-title">订单管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/orders/query">订单管理</a> <span class="divider">/</span></li>
			<li><a href="${pageContext.request.contextPath }/orders/query">订单列表</a> <span class="divider">/</span></li>
			<li class="active">查看订单信息</li>
		</ul>



		<div class="container-fluid">
			
			<!-- 基本信息 -->
			<div class="row-fluid">
				<div class="block">
					<a href="#page-basic" class="block-heading" data-toggle="collapse">基本信息</a>
					<div id="page-basic" class="block-body collapse in">
						<table class="table table-striped table-hover table-bordered">
								<tbody>
									<tr>
										<td style="text-align:right;font-weight:bold;">订单号：</td>
										<td>${order.orderId}</td>
										<td style="text-align:right;font-weight:bold;">订单状态：</td>
										<td>
											${requestScope.order.status==1?"正常":"<span style='color: red'>已取消</span>"}
											, ${requestScope.order.statusPay==1?"已付款":"未付款"} ,
											${requestScope.order.statusSend==1?"已发货":"未发货"} ,
											${requestScope.order.statusReceive==1?"已收货":"未收货"}
										</td>
									</tr>
									<tr>
										<td style="text-align:right;font-weight:bold;">购货人：</td>
										<td>${requestScope.order.tbUser.userName}</td>
										<td style="text-align:right;font-weight:bold;">下单时间：</td>
										<td>
											<fmt:formatDate value="${requestScope.order.orderDate}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
										</td>
									</tr>
									<tr>
										<td style="text-align:right;font-weight:bold;">支付方式：</td>
										<td>网银在线</td>
										<td style="text-align:right;font-weight:bold;">付款时间：</td>
										<td><fmt:formatDate value="${requestScope.order.payTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td></td>
									</tr>
									<tr>
										<td style="text-align:right;font-weight:bold;">发货单号：</td>
										<td></td>
										<td style="text-align:right;font-weight:bold;">发货时间：</td>
										<td></td>
									</tr>
								</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<!-- 收货人信息 -->
			<div class="row-fluid">
				<div class="block">
					<a href="#page-address" class="block-heading" data-toggle="collapse">收货人信息</a>
					<div id="page-address" class="block-body collapse in">
						<table class="table table-striped table-hover table-bordered">
								<tbody>
									<tr>
										<td style="text-align:right;font-weight:bold;">收货人：</td>
										<td>${requestScope.order.person}</td>
										<td style="text-align:right;font-weight:bold;">电话：</td>
										<td>${requestScope.order.phone}</td>
									</tr>
									<tr>
										<td style="text-align:right;font-weight:bold;">地址：</td>
										<td colspan="3">${requestScope.order.address}</td>
									</tr>
								</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<!-- 商品信息 -->
			<div class="row-fluid">
				<div class="block">
					<a href="#page-goods-list" class="block-heading" data-toggle="collapse">商品信息</a>
					<div id="page-goods-list" class="block-body collapse in">
						<table class="table table-striped table-hover table-bordered">
								<thead>
									<tr>
										<th>商品名称</th>
										<th>价格</th>
										<th>数量</th>
										<th>库存</th>
										<th>小计</th>
									</tr>
								</thead>
								
								<tbody>
									
									<c:forEach items="${requestScope.orderDetaillist }" var="orderDetail">
										<tr>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=1" target="_blank">${orderDetail.tbBook.bookName }</a>
											</td>
											<td>￥${orderDetail.tbBook.bookPrice }</td>
											<td>${orderDetail.num }</td>
											<td>${orderDetail.tbBook.storeCount }</td>
											<td>￥<fmt:formatNumber value="${orderDetail.num*orderDetail.tbBook.bookPrice}" pattern="0.00" />元</td>
										</tr>
										
									</c:forEach>
								</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<!-- 费用信息 -->
			<div class="row-fluid">
				<div class="block">
					<a href="#page-money" class="block-heading" data-toggle="collapse">费用信息</a>
					<div id="page-money" class="block-body collapse in">
						<div class="search-well">
						<form class="form-inline" role="search" action="#" method="post">
								<strong>商品总金额：￥${requestScope.order.orderPrice }</strong><br>
								<strong>运费：￥0</strong><br>
								<strong style="color: red">总计：￥${requestScope.order.orderPrice }</strong>
						</form>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 可执行操作 -->
			<div class="row-fluid">
				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">当前可执行操作</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search" action="#" method="post">
							<c:if test="${order.status>0 }">
							
								<!-- 待付款 -->
								<c:if test="${order.status>0 && order.statusPay<1 && order.statusSend<1 && order.statusReceive<1 }">
		                			<button type="button" class="btn btn-default" onclick="setStatus(1,${order.orderId})">设置为已付款</button>
		                			<button type="button" class="btn btn-default" onclick="setStatus(-1,${order.orderId})">取消订单</button>
								</c:if>
	                			
	                			<!-- 已付款 -->
								<c:if test="${order.status>0 && order.statusPay>0 && order.statusSend<1 && order.statusReceive<1 }">
		                			<button type="button" class="btn btn-default" onclick="setStatus(2,${order.orderId})">发货</button>
		                			<button type="button" class="btn btn-default" onclick="setStatus(0,${order.orderId})">设置为未付款</button>
		                			<button type="button" class="btn btn-default" onclick="setStatus(-1,${order.orderId})">取消订单</button>
								</c:if>
	
								<!-- 已发货 -->
								<c:if test="${order.status>0 && order.statusPay>0 && order.statusSend>0 && order.statusReceive<1 }">
		                			<button type="button" class="btn btn-default" onclick="setStatus(3,${order.orderId})">设置为已收货</button>
		                			<button type="button" class="btn btn-default" onclick="setStatus(-1,${order.orderId})">取消订单</button>
								</c:if>
	                			<!-- 已完成 -->
	                			<c:if test="${order.status>0 && order.statusPay>0 && order.statusSend>0 && order.statusReceive>0 }">
								</c:if>
							</c:if>
                			<!-- 已取消 -->
	                		<c:if test="${order.status<1 }">
	                			<button type="button" class="btn btn-default" onclick="deleteClick(${order.orderId})">删除订单</button>
	                		</c:if>
	                			
							</form>
						</div>
						
						<table class="table table-striped table-hover table-bordered">
								<thead>
									<tr>
										<th>操作者</th>
										<th>操作时间</th>
										<th>订单状态</th>
										<th>付款状态</th>
										<th>发货状态</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach items="${requestScope.perateLogList }" var="perateLog">
										<tr>
											<td>${perateLog.tbUserAfter.user_name }</td>
											<td>
												<fmt:formatDate value="${perateLog.operateTime}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
											</td>
											<td>${perateLog.status>0?"正常":"已取消" }</td>
											<td>${perateLog.statusPay>0?"已付款":"未付款" }</td>
											<td>
											<c:if test="${perateLog.statusSend>0}">
												${perateLog.statusSend>0?"收货确认":"已发货,配送中" }
											</c:if>
											
											<c:if test="${perateLog.statusSend<1}">
												未发货
											</c:if>
											</td>
										</tr>
										
									</c:forEach>
								</tbody>
						</table>
						
					</div>
				</div>
			</div>

			<% pageContext.include("/footer.jsp"); %>
		</div>


	</div>
</body>
	<script>

	//删除订单
	function deleteClick(orderId){
		if(confirm("确认删除吗？")){
			location.href="${pageContext.request.contextPath }/orders/delete/"+orderId;
		}
	}
	//设置订单状态
	function setStatus(orderStatus,orderId){
		location.href="${pageContext.request.contextPath }/orders/setstatus/"+orderId+"/"+orderStatus;
	}
	</script>
</html>


