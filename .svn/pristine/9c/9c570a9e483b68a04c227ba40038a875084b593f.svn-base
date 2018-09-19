<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"/>
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
</head>
<body>
	<%
		pageContext.include("/framework.jsp");
	%>
 <div class="content">
		<div class="header">
			<h1 class="page-title">促销管理</h1>
		</div>
		
		<ul class="breadcrumb">
			<li><a href="adimg.jsp">促销管理</a> <span class="divider">/</span></li>
			<li class="active">公告板</li>
		</ul>
		
		<div class="container-fluid">
		
			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">添加公告</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form  class="form-inline" role="search"
								action="${pageContext.request.contextPath }/sales/insertsales/${param.sales_name}/${param.book_id}" method="post">
								<input type="text" class="form-control" placeholder="请输入图书ID" name="book_id" /> 
								<input type="text" class="form-control" placeholder="请输入公告内容" name="news_contents" /> 
								
								<button class="btn btn-primary" id="btnSave">
									<i class="icon-save"></i> 保存
								</button>

							</form>
						</div>
					</div>
				</div>
			</div>
		
			<div class="row-fluid">
				
						<span>共有 <b>99</b> 条记录</span>
						
						<div class="well">
							<table class="table">
								<thead>
									<tr id="theTableTitle">
										<th>编号</th>
										<th>公告内容</th>
										<th>链接书籍ID</th>
										<th>操作</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach items="${requestScope.salesList }" var="sales" varStatus="i">
										<tr>
											<td>${i.index+1 }</td>
											<td>${sales.sales_name }</td>
											<td>
												<a href="http://182.61.25.211:8080/EShop/info.jsp?bookId=1" title="查看" target="_blank">${sales.book_id }</a>
											</td>
											<td>
												<a href="javascript:updatesales(${sales.book_id })" title="编辑" id="update"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deletesalesClick(${sales.book_id })" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									</c:forEach>
									
								</tbody>

							</table>
						</div>
						<div class="pagination pagination myul">
							<ul>
								<li class='disabled'><a href="#">&laquo;首页</a></li>
								<li class='disabled'><a href="#">上一页</a></li>
								<li><a href="#">1</a></li>
								<li class='active'><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">下一页</a></li>
								<li><a href="#">尾页&raquo;</a></li>
							</ul>
						</div>

				</div>
			</div>
		<%
				pageContext.include("/footer.jsp");
		%>	
</div>
	<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/tooltips.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/books.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
			
			$("#btnSave").click(function(){
				var book_id=$("input[name='book_id']").val();
				var sales_name=$("input[name='news_contents']").val();
				if (book_id=='') {
					show_err_msg("请输入书籍ID");
				}else if (sales_name=='') {
					show_err_msg("请输入公告内容");
				}else{
					
					show_loading();
					
					var url="/EShopManager/sales/insertsales/"+sales_name+"/"+book_id;
					var data={
							book_id:book_id,
							sales_name:sales_name
					};
					$.post(url,data,function(response){
						if (response==1) {
							show_msg("添加成功", "selectAllSales");
						}

					});
					
				}
				
				return false;
			});
		});
	</script>
	<script type="text/javascript">
		//修改公告栏公告内容
		function updatesales(book_id){
			var salesname=prompt("请输入新的公告内容");
			show_loading();
			
			var url = GetServerUrl("sales/updatesales/"+salesname+"/"+book_id);
			var data={
					book_id:book_id,
					salesname:salesname
			};
			$.post(url, data, function(response) {
				if (response == 1) {
					show_msg('操作成功', "selectAllSales");
				} else {
					show_err_msg('操作失败');
				}
	
			});
				
		}
		
	</script>
	
</body>
</html>