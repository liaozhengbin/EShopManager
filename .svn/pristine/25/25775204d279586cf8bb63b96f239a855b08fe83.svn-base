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
<!-- 提示操作结果 -->
<c:if test="${requestScope.result!=null }">
<script type="text/javascript">
		show_err_msg('${requestScope.result==true?"操作成功":"操作失败" }');
</script>
</c:if>
<body class="">
	<% pageContext.include("/framework.jsp"); %>
	<div class="content">
		<div class="header">
			<h1 class="page-title">订单管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/orders/query">订单管理</a> <span class="divider">/</span></li>
			<li class="active">订单列表</li>
		</ul>

		<div class="container-fluid">

			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">筛选</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search"
								action="${pageContext.request.contextPath }/orders/query"
								method="post">
								<input class="form-control" placeholder="订单号" name="orderId"
									type="text" value="${requestScope.orderId }"/>
									 <input class="form-control" placeholder="收货人" name="person"
									type="text" value="${requestScope.person }">
									<input class="form-control hasDatepicker" placeholder="请选择下单日期"
									id="datepicker" name="orderDate" type="text"
									value="${requestScope.orderDate }"> 
									<select class="form-control" name="orderStatus">
									<option value="" ${empty requestScope.orderStatus?"selected":"" } selected="selected">--请选择状态--</option>
									<option value="0" ${requestScope.orderStatus==0?"selected":"" }>待付款</option>
									<option value="1" ${requestScope.orderStatus==1?"selected":"" }>待发货</option>
									<option value="2" ${requestScope.orderStatus==2?"selected":"" }>待收货</option>
									<option value="-1" ${requestScope.orderStatus==-1?"selected":"" }>已取消</option>
									<option value="3" ${requestScope.orderStatus==3?"selected":"" }>已完成</option>
								</select>
								<button type="submit" class="btn btn-default">
									<i class="icon-search"></i> 查询
								</button>

							</form>
						</div>
					</div>
				</div>
			</div>

			<div class="row-fluid">

				<span>共有 <b>${requestScope.totalCount }</b> 条记录
				</span>

				<div class="well">

					<div class="search-well">
						<form class="form-inline" action="#">
							<select name="control">
								<option value="" selected="selected">--请选择--</option>
								<option value="1">取消</option>
								<option value="1">删除</option>
							</select>
							<button class="btn" type="button">
								<i class="icon-legal"></i> 操作
							</button>
						</form>
					</div>

					<table class="table">
						<thead>
							<tr id="theTableTitle">
								<th><input id="all_ck" type="checkbox"> 订单号</th>
								<th>总金额</th>
								<th>下单时间</th>
								<th>收货人</th>
								<th>收货地址</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${requestScope.orderlist }" var="order">
								<tr>
									<td><input id="ck" name="ck" value="1" type="checkbox">
										${order.orderId}</td>
									<td>￥${order.orderPrice}</td>
									<td><a href="#">${order.tbUser.userName}</a> <br>
										 <fmt:formatDate value="${order.orderDate}" pattern="yyyy-MM-dd  HH:mm:ss" /></td>
									<td>${order.person} <br> TEL：${order.phone}
									</td>
									<td>${order.address}</td>
									<td>${order.status>0?"正常":"<span style='color: red'>已取消</span>"}
										, ${order.statusPay>0?"已付款":"未付款"} ,
										${order.statusSend>0?"已发货（待收货），配货中":"未发货"} ,
										${order.statusReceive>0?"已收货":"未收货"}</td>
									<td><a
										href="${pageContext.request.contextPath }/orders/info?orderId=${order.orderId}"
										title="查看"> <i class="icon-search"></i>
									</a> <a href="javascript:deleteClick(${order.orderId})" title="删除"><i
											class="icon-remove"></i></a></td>
								</tr>
							</c:forEach>

						</tbody>

					</table>
				</div>
				<div class="pagination pagination myul">
					<c:set var="urlstr"
						value="${pageContext.request.contextPath }/orders/query?orderId=${param.orderId }&person=${param.person }&orderDate=${param.orderDate }&currentPage=" />
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

<script type="text/javascript">

	function deleteClick(Id){
		if(confirm("确认删除吗？")){
			location.href="${pageContext.request.contextPath }/orders/delete/"+Id;
		}
	}
</script>
</html>


