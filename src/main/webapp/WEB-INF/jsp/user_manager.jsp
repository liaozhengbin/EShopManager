<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>EShopManager</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"/>
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
<meta name="description" content="">
<meta name="author" content="">
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>

<script type="text/javascript">
  
  function deleteClick(roleId){
		if(confirm("确认删除吗？")){
			location.href="role?method=delete&roleId="+roleId;
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<html>
<body>
	<%
		pageContext.include("/framework.jsp");
	%>
	<div class="content">
		<div class="header">
			<h1 class="page-title">权限管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="typemanager.jsp">权限管理</a> <span class="divider">/</span></li>
			<li class="active">用户列表管理</li>
		</ul>

		<div class="container-fluid">

			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">增加用户</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search" action="#" method="post">

								<button class="btn btn-primary" id="btnSave">
									<i class="icon-save"></i> 增加用户
								</button>

							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">

				<table id="example-basic-expandable" class="table">
					<thead>
						<tr id="theTableTitle">
							<th>用户ID</th>
							<th>用户名称</th>
							<th>用户类型</th>
							<th>角色</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${requestScope.userList }" var="user">
							<tr data-tt-id="1">
								<td>${user.user_id }</td>
								<td>${user.user_name }</td>
								<td>${user.user_type }</td>
								<td>${user.user_role }</td>
								<td><a href="/EShopManager/books/queryinfo.action?book_id="
									title="编辑"><i class="icon-pencil"></i></a> <a
									href="javascript:deleteClick()" title="删除"><i
										class="icon-remove"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<%
				pageContext.include("/footer.jsp");
			%>
		</div>
	</div>
</body>
</html>
