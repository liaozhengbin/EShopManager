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
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"/>
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
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
  
  function deleteClick(rightId){
		if(confirm("确认删除吗？")){
			location.href="deleteRight/"+rightId;
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

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
			<li class="active">权限列表管理</li>
		</ul>

		<div class="container-fluid">

			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">添加权限</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search" action="${pageContext.request.contextPath }/addRight" method="post">
								<input type="text" class="form-control" placeholder="请输入权限名称" name="right_name" />
								<button class="btn btn-primary" id="btnSave">
									<i class="icon-save"></i> 添加权限
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
							<th>权限ID</th>
				            <th>权限名称</th>
				            <th>操作</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${requestScope.rightList }" var="right">
							<tr data-tt-id="1">
								<td>${right.permission_id }</td>
								<td>${right.permission_des }</td>
								<td><a href="${pageContext.request.contextPath }/selectUpdateRight/${right.permission_id }"
									title="编辑"><i class="icon-pencil"></i></a> <a
									href="javascript:deleteClick('${right.permission_id }')" title="删除"><i
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
