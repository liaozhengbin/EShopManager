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
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/tooltips.js"></script>
</head>
<body class="">
<!-- 提示操作结果 -->
<c:if test="${requestScope.result!=null }">
<script type="text/javascript">
		show_err_msg('${requestScope.result==true?"操作成功":"操作失败" }');
</script>
</c:if>
	<% pageContext.include("/framework.jsp"); %>
	<div class="content">
		<div class="header">

			<h1 class="page-title">会员管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/accounts/query">会员管理</a> <span class="divider">/</span></li>
			<li class="active">查看会员信息</li>
		</ul>

		<div class="container-fluid">

			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">筛选</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search" action="${pageContext.request.contextPath }/accounts/query" method="post">
								<input class="form-control" placeholder="请输入关键字(模糊查询)"
									value="${requestScope.userName }" name="userName" type="text"> 
								<input class="form-control hasDatepicker" placeholder="请选择注册时间"
									value="${requestScope.time }" id="datepicker" name="time" type="text"> 
								<select
									class="form-control" name="isActivated">
									<option value="" >--请选择状态--</option>
									<option value="1" ${requestScope.isActivated eq 1?'selected="selected"':'' }>激活</option>
									<option value="0" ${requestScope.isActivated eq 0?'selected="selected"':''}>未激活</option>
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
					<table class="table">
						<thead>
							<tr id="theTableTitle">
								<th>编号</th>
								<th>用户名</th>
								<th>邮箱</th>
								<th>性别</th>
								<th>电话</th>
								<th>状态</th>
								<th>在线</th>
								<th>注册时间</th>
								<th>操作</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${requestScope.userlist }" var="user">
								<tr>
									<td>${user.userId }</td>
									<td>${user.userName }</td>
									<td>${user.userEmail }</td>
									<td>${user.userSex }</td>
									<td>${user.userPhone }</td>
									<td>${user.isActivated==1?"已激活":"末激活" }</td>
									<td><img
										src="${pageContext.request.contextPath }/static/images/${user.isOnline==1?'yes':'no' }.gif">

									</td>
									<td><fmt:formatDate value="${user.time}"
											pattern="yyyy-MM-dd  HH:mm:ss" /></td>
									<td><a
										href="${pageContext.request.contextPath }/accounts/update/${user.userId }"
										title="编辑"><i class="icon-pencil"></i></a> <a
										href="javascript:deleteClick(${user.userId })" title="删除"><i
											class="icon-remove"></i></a></td>
								</tr>
							</c:forEach>

						</tbody>

					</table>
				</div>
				<div class="pagination pagination myul">
					<c:set var="urlstr"
						value="${pageContext.request.contextPath }/accounts/query?orderId=${param.orderId }&person=${param.person }&orderDate=${param.orderDate }&currentPage=" />
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
			location.href="${pageContext.request.contextPath }/accounts/delete/"+Id;
		}
	}
</script>
</html>


