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

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/stylesheets/theme.css" />
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/static/lib/ckeditor/ckeditor.js" type="text/javascript"></script>

<!-- Demo page code -->

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
</head>
<body>

	<%
		pageContext.include("/framework.jsp");
	%>

	<div class="content">
		<div class="header">
			<h1 class="page-title">图书管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/books/query.do">图书管理</a> <span class="divider">/</span></li>
			<li><a href="${pageContext.request.contextPath }/books/query.do">查看图书信息</a> <span class="divider">/</span></li>
			<li class="active">修改图书信息</li>
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
					<form id="uploadForm" action="${pageContext.request.contextPath }/books/update" enctype="multipart/form-data" method="post">
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active in" id="basicInfo">
							
								<label>书籍名称</label>
								<input type="text" name="bookName" class="input-xlarge" value="${requestScope.bookInfo.bookName }"> 
								
								<label>书籍分类</label> 
								<select name="typeId" id="DropDownTimezone1" class="input-xlarge">
									<option value="">--请选择分类--</option>
									
								</select>
								<select name="typeId" id="DropDownTimezone2" class="input-xlarge">
									<option value="">--请选择子分类--</option>
									<option value="12">小说</option>
									<option value="1">办公软件</option>
									<option value="1">数据库</option>
								</select>
								
								<label>本店售价</label> 
								<input type="text" name="bookPrice" class="input-xlarge" value="${requestScope.bookInfo.bookPrice }">
								
								<label>市场价</label> 
								<input type="text" name="bookPriceOld" class="input-xlarge" value="${requestScope.bookInfo.bookPriceOld }"> 
								
								<label>作者</label> 
								<input type="text" name="bookAuthor" class="input-xlarge" value="${requestScope.bookInfo.bookAuthor }">
								
								<label>出版社</label> 
								<input type="text" name=bookPress class="input-xlarge" value="${requestScope.bookInfo.bookPress }">
								
								<label>上传商品图片</label>
								<input type="file" name="book_logo_big" placeholder="请选择商品图片" class="input-xlarge" />
						        
								<label>上传商品缩略图</label> 
								<input type="file" name="book_logo_small" placeholder="请选择商品缩略图" class="input-xlarge" />
								
						</div>
						
						<!-- 详细描述 -->
						<div class="tab-pane fade" id="desInfo">
								
								<textarea name="bookDescription" style="width: 90%"  cols="10" rows="20" ></textarea>
								<script type="text/javascript">
								CKEDITOR.replace("book_description");
								CKEDITOR.instances.book_description.setData();
									
								</script>
								
								
								<iframe id="api_iframe_51240" name="api_iframe_51240" src="https://www.51240.com/apiiframe/?api_from=51240&amp;api_url=https://zaixianwangyebianji.51240.com/&amp;api_width=98%&amp;api_backgroundcolor=FFFFFF" scrolling="no" width="90%" height="500px" frameborder="0"></iframe>
								<script type="text/javascript">
									//接口生成：https://www.51240.com/api/
									document.getElementById("api_iframe_51240").src = "https://www.51240.com/apiiframe/?api_from=51240&api_url=https://zaixianwangyebianji.51240.com/&api_width=98%&api_backgroundcolor=FFFFFF";
								</script>
								
						</div>
						
						<!-- 其他信息 -->
						<div class="tab-pane fade" id="otherInfo">
								<label>商品库存数量</label> 
								<input type="text" name="storeCount" value="${requestScope.bookInfo.storeCount }" class="input-xlarge" />
								<br /><br />
								
								<label>
								是否新品：&nbsp;&nbsp;
								<input type="radio" name="isNew" value="10" checked="checked" />是&nbsp;&nbsp;
								<input type="radio" name="isNew" value="0" />否
								</label>
								<br />
								
								<label>
								是否热销：&nbsp;&nbsp;
								<input type="radio" name="isHot" value="10" checked="checked" />是&nbsp;&nbsp;
								<input type="radio" name="isHot" value="0" />否
								</label>
								<br />
								
								<label>
								上架：&nbsp;&nbsp;
								<input type="checkbox" name="status" value="1" checked="checked" />
								打勾表示允许销售，否则不允许销售
								</label>
						</div>
					</div>
					</form>	
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


	<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/lib/tooltips.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/books.js"></script>
	
	<script type="text/javascript">
		$(function(){
			selectAlltype('${pageContext.request.contextPath }');
		});
	
		 $("#btnSave").click(function(){
	         	$("#uploadForm").submit();
	         });
	</script>
	
	
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
			
			$("#btnSave11").click(function(){
				var book_name=$("input[name='book_name']").val();
				var type_id=$("select[name='type_id']").val();
				var book_price=$("input[name='book_price']").val();
				var book_price_old=$("input[name='book_price_old']").val();
				var book_author=$("input[name='book_author']").val();
				var book_press=$("input[name='book_press']").val();
				var book_logo_big=$("input[name='book_logo_big']").val();
				var book_logo_small=$("input[name='book_logo_small']").val();
				var book_description=CKEDITOR.instances.book_description.getData();
				var store_count=$("input[name='store_count']").val();
				var is_new=$("input[name='is_new']:checked").val().trim();
				var is_hot=$("input[name='is_hot']:checked").val().trim();
				var status=0;
				if ($("input[name='status']").get(0).checked) {
					status=1;
				}
				
				
				if(book_name==''){
			  		show_err_msg('请输入书籍名称');
			  	}else if (type_id=='') {
			  		show_err_msg('请选择分类');
				}else if (book_price=='') {
			  		show_err_msg('请输入售价');
				}else if (book_price_old=='') {
			  		show_err_msg('请输入市场价');
				}else if (book_author=='') {
			  		show_err_msg('请输入作者');
				}else if (book_press=='') {
			  		show_err_msg('请输入出版社');
				}else if (book_logo_big=='') {
			  		show_err_msg('请选择商品图片');
				}else if (book_logo_small=='') {
			  		show_err_msg('请选择商品缩略图');
				}else if (book_description=='') {
			  		show_err_msg('请输入详细描述');
				}else if (store_count=='') {
			  		show_err_msg('请输入商品库存');
				}else{
					show_loading();
					uploadImg(book_name,type_id,book_price,book_price_old,book_author,book_press,book_description,
							store_count,is_new,is_hot,status,book_logo_big);
				}
			
				
			});
			
			
		});
		
		
		function uploadImg(book_name,type_id,book_price,book_price_old,book_author,book_press,book_description,
				store_count,is_new,is_hot,status,fileName){
			var headFile = fileName.substr(fileName.indexOf("."));
		    if(headFile=='.jpg' || headFile=='.jpeg' || headFile=='.png'){
		    	//开始上传图片
		    	show_loading();
		    	var formData=new FormData();
		    	formData.append("fileImg", $("input[name='book_logo_big']")[0].files[0]);
		    	formData.append("fileImg", $("input[name='book_logo_small']")[0].files[0]);
		    	
		    	$.ajax({
		    	    url: '/EShopManager/upload.action',
		    	    type: 'POST',
		    	    cache: false,
		    	    data: formData,
		    	    processData: false,
		    	    contentType: false
		    	}).done(function(res) {
		    		var jsonData=$.parseJSON(res);
					if (jsonData.status==200) {
						requestAddBook(book_name,type_id,book_price,book_price_old,book_author,book_press,
								jsonData.book_logo_big,jsonData.book_logo_small,book_description,
								store_count,is_new,is_hot,status);
					}else{
						show_err_msg('上传图片失败');
					}
		    	}).fail(function(res) {
		    		show_err_msg('上传图片失败');
		    	});
		    	
		    }else{
		    	show_err_msg('不支持该图片类型，请上传jpg、jpeg、png格式的图片');
		    }
			
		}
		
		function requestAddBook(book_name,type_id,book_price,book_price_old,book_author,book_press,
				book_logo_big,book_logo_small,book_description,
				store_count,is_new,is_hot,status){
			//ajax请求servlet
		    var url="/EShopManager/books/add.action";
			var data={
					book_name:book_name,
					type_id:type_id,
					book_price:book_price,
					book_price_old:book_price_old,
					book_author:book_author,
					book_press:book_press,
					book_logo_big:book_logo_big,
					book_logo_small:book_logo_small,
					book_description:book_description,
					store_count:store_count,
					is_new:is_new,
					is_hot:is_hot,
					status:status
			};
			
			$.post(url,data,function(response){
				var jsonData=$.parseJSON(response);
				var result=jsonData.status;
				
				var responseUrl="/EShopManager/books/query.action";
				if(result=="200"){
					show_msg('操作成功',responseUrl);
				}else{
					show_err_msg('操作失败');
				}

			});
		}
		
	</script>

</body>
</html>