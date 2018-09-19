<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>EShopManager</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="/EShopManager/static/lib/bootstrap/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

	<script type="text/javascript">
    	
	    /**全选、全不选**/
	    $(function() {
	  	  $("#all_ck").change(function(){
	  		  if ($(this).is(':checked')) {//全选
	  			  $("[name=ck]:checkbox").each(function(){
	  				  this.checked=true;
	  			  		//$(this).attr("checked",true);
	  			  });
	  		  }else{//全不选
	  			  $("[name=ck]:checkbox").each(function(){
	  				  this.checked=false;
	  			  		//$(this).attr("checked",false);
	  			  });
	  		  } 
	  		  
	  		});
	  	  	
	  	});
    
    </script>

  </head>
<body>

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
										<th><input type="checkbox" id="all_ck"  />编号</th>
										<th>书名</th>
										<th>价格</th>
										<th>所属分类</th>
										<th>操作</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach items="${requestScope.bookList }" var="bookInfo">
										<tr>
											<td><input type="checkbox" id="ck" name="ck" value="1" />${bookInfo.bookId }</td>
											<td>${bookInfo.bookName }</td>
											<td>￥${bookInfo.bookPrice }</td>
											<td>${bookInfo.tbType.typeName }</td>
											<td>
												<a href="${pageContext.request.contextPath }/books/backToQuery/${bookInfo.bookId}" title="还原"><i class="icon-fire"></i></a>
	              								<a href="javascript:deleteRecycleClick(${bookInfo.bookId })" title="删除"><i class="icon-remove"></i></a>
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
			
			
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

				<footer>
					<hr>
					<!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
					<p class="pull-right">
						Collect from <a href="http://www.iyunhe.com/" target="_blank">云和数据</a>
					</p>

					<p>
						copyright &copy; 2013-2016 河南云和数据信息技术有限公司深圳分公司&nbsp; <a
							href="http://www.iyunhe.com/" title="河南云和数据信息技术有限公司深圳分公司"
							target="_blank">首页</a>
					</p>
				</footer>
</body>
</html>
		</div>
	</div>
    
    <script src="${pageContext.request.contextPath }/static/js/books.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/tooltips.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
		
	</script>

</body>
</html>