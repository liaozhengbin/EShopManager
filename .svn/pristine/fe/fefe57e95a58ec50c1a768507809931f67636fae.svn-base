<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h1 class="page-title">促销管理</h1>
		</div>
		
		<ul class="breadcrumb">
			<li><a href="adimg.jsp">促销管理</a> <span class="divider">/</span></li>
			<li class="active">首页轮播</li>
		</ul>
		
		<div class="container-fluid">
		
			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">添加轮播图</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search" action="#" method="post" id="uploadForm">
								<input class="form-control" placeholder="请输入图书ID" name="book_id" type="text"> 
								<input class="form-control" name="ad_img" placeholder="请上传轮播图片" type="file"> 
								
								<button class="btn btn-primary" id="btnSave">
									<i class="icon-save"></i> 保存
								</button>

							</form>
						</div>
					</div>
				</div>
			</div>
		
			<div class="row-fluid">
				
				<div class="block">
			        <p class="block-heading">轮播列表</p>
			        <div class="block-body gallery">
			        		
			        			<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=40" title="查看" target="_blank">
			        				<img src="/EShopManager/upload/150989850093220171106001323.png" class="img-polaroid" width="450px">
			        			</a>
			        			<a href="javascript:deleteClick(11)"><img src="/EShopManager/static/images/no.gif"></a>
			        		
			        			<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=22" title="查看" target="_blank">
			        				<img src="/EShopManager/upload/150989854066620171106001407.png" class="img-polaroid" width="450px">
			        			</a>
			        			<a href="javascript:deleteClick(12)"><img src="/EShopManager/static/images/no.gif"></a>
			        		
			        </div>
			    </div>
					
			</div>
	
	<% pageContext.include("/footer.jsp"); %>
		</div>


	</div>
</body>
</html>


