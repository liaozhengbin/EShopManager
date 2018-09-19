<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<li class="active">添加图书信息</li>
		</ul>



		<div class="container-fluid">

			<div class="row-fluid">

				<div class="btn-toolbar">
					<button class="btn btn-primary" id="btnSave">
						<i class="icon-save"></i> 保存
					</button>
				</div>
				<div class="well">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#basicInfo" data-toggle="tab">通用信息</a></li>
						<li><a href="#desInfo" data-toggle="tab">详细描述</a></li>
						<li><a href="#otherInfo" data-toggle="tab">其他信息</a></li>
					</ul>
					
					<!-- 通用信息 -->
					<form id="uploadForm" action="${pageContext.request.contextPath }/books/add" enctype="multipart/form-data" method="post" >
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active in" id="basicInfo">
							
								<label>书籍名称</label>
								<input name="bookName" class="input-xlarge" type="text"> 
								
								<label>书籍分类</label> 
								
								<select name="typeId" id="DropDownTimezone1" class="input-xlarge"></select>
								
								<select name="typeId" id="DropDownTimezone2" class="input-xlarge"></select>
								
								<label>本店售价</label> 
								<input name="bookPrice" class="input-xlarge" type="text">
								
								<label>市场价</label> 
								<input name="bookPriceOld" class="input-xlarge" type="text"> 
								
								<label>作者</label> 
								<input name="bookAuthor" class="input-xlarge" type="text">
								
								<label>出版社</label> 
								<input name="bookPress" class="input-xlarge" type="text">
								
								<label>上传商品图片</label>
								<input name="book_logo_big" placeholder="请选择商品图片" class="input-xlarge" type="file">
						        
								<label>上传商品缩略图</label> 
								<input name="book_logo_small" placeholder="请选择商品缩略图" class="input-xlarge" type="file">
                       				
						</div>
						
						<!-- 详细描述 -->
						<div class="tab-pane fade" id="desInfo">
								<textarea name="bookDescription" style="width: 90%" cols="10" rows="20"></textarea>
								<!--  
								<script type="text/javascript">
									CKEDITOR.replace('book_description');
								</script>
								-->
							  
							<iframe id="api_iframe_51240" name="api_iframe_51240" src="https://www.51240.com/apiiframe/?api_from=51240&amp;api_url=https://zaixianwangyebianji.51240.com/&amp;api_width=98%&amp;api_backgroundcolor=FFFFFF" scrolling="no" width="90%" height="500px" frameborder="0"></iframe>
								<script type="text/javascript">
									//接口生成：https://www.51240.com/api/
									document.getElementById("api_iframe_51240").src = "https://www.51240.com/apiiframe/?api_from=51240&api_url=https://zaixianwangyebianji.51240.com/&api_width=98%&api_backgroundcolor=FFFFFF";
								</script>
							
						</div>
						
						<!-- 其他信息 -->
						<div class="tab-pane fade" id="otherInfo">
							
								<label>上传商品子图</label> 
								<input name="pic_name1" class="input-xlarge" type="file">
								<input name="pic_name2" class="input-xlarge" type="file">
								<input name="pic_name3" class="input-xlarge" type="file">
								<input name="pic_name4" class="input-xlarge" type="file">
								<input name="pic_name5" class="input-xlarge" type="file">
								<br><br>
								
								<label>商品库存数量</label> 
								<input name="storeCount" value="1" class="input-xlarge" type="text">
								<br><br>
								
								<label>
								是否新品：&nbsp;&nbsp;
								<input name="isNew" value="10" type="radio">是&nbsp;&nbsp;
								<input name="isNew" value="0" checked="checked" type="radio">否
								</label>
								<br>
								
								<label>
								是否热销：&nbsp;&nbsp;
								<input name="isHot" value="10" type="radio">是&nbsp;&nbsp;
								<input name="isHot" value="0" checked="checked" type="radio">否
								</label>
								<br>
								
								<label>
								上架：&nbsp;&nbsp;
								<input name="status" value="1" checked="checked" type="checkbox">
								打勾表示允许销售，否则不允许销售
								</label>
								
						</div>
					</div>
				</form>
				</div>

			</div>

	<% pageContext.include("/footer.jsp"); %>
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/books.js"></script>
	<script type="text/javascript">
	
		$(function(){
			selectAlltype('${pageContext.request.contextPath }');
		});
		
		 $("#btnSave").click(function(){
         	$("#uploadForm").submit();
         });
		
	</script>
	
</body>
</html>


