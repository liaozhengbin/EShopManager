<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h1 class="page-title">图书管理</h1>
		</div>
		
		<ul class="breadcrumb">
			<li><a href="bookmanager.jsp">图书管理</a> <span class="divider">/</span></li>
			<li class="active">回收站</li>
		</ul>
		
		<div class="container-fluid">
		
			<div class="row-fluid">
				
						<span>共有 <b>99</b> 条记录</span>
						
						<div class="well">
							<div class="search-well">
				                <form class="form-inline" action="#">
				                    <select name="control">
										<option value="" selected="selected">--请选择--</option>
										<option value="1">还原</option>
										<option value="1">移除</option>
									</select>
				                    <button class="btn" type="button"><i class="icon-legal"></i> 操作</button>
				                </form>
            				</div>
						
							
							<table class="table">
								<thead>
									<tr id="theTableTitle">
										<th>
											<input id="all_ck" type="checkbox">
											编号
										</th>
										<th>书名</th>
										<th>价格</th>
										<th>所属分类</th>
										<th>操作</th>
									</tr>
								</thead>
								
								<tbody>
									
										<tr>
											<td>
												<input id="ck" name="ck" value="1" type="checkbox">	
												14
											</td>
											<td>算法导论（原书第3版）</td>
											<td>￥102.4</td>
											<td>编程语言</td>
											<td>
												<a href="#" title="还原"><i class="icon-fire"></i></a>
	              								<a href="javascript:deleteClick(14)" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>
												<input id="ck" name="ck" value="1" type="checkbox">	
												32
											</td>
											<td>下雨天一个人在家</td>
											<td>￥42.8</td>
											<td>文学</td>
											<td>
												<a href="#" title="还原"><i class="icon-fire"></i></a>
	              								<a href="javascript:deleteClick(32)" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>
												<input id="ck" name="ck" value="1" type="checkbox">	
												35
											</td>
											<td>新编百姓最爱家常菜2888例（附光盘）</td>
											<td>￥37.8</td>
											<td>美食</td>
											<td>
												<a href="#" title="还原"><i class="icon-fire"></i></a>
	              								<a href="javascript:deleteClick(35)" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
								</tbody>

							</table>
						</div>
						<div class="pagination pagination myul">
							<ul>
								<li class="disabled"><a href="#">«首页</a></li>
								<li class="disabled"><a href="#">上一页</a></li>
								<li><a href="#">1</a></li>
								<li class="active"><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">下一页</a></li>
								<li><a href="#">尾页»</a></li>
							</ul>
						</div>

			</div>
			
	<% pageContext.include("/footer.jsp"); %>
		</div>


	</div>
</body>
</html>


