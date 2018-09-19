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
			<li class="active">公告板</li>
		</ul>
		
		<div class="container-fluid">
		
			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">添加公告</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search" action="#" method="post">
								<input class="form-control" placeholder="请输入图书ID" name="book_id" type="text"> 
								<input class="form-control" placeholder="请输入公告内容" name="news_contents" type="text"> 
								
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
									
										<tr>
											<td>1</td>
											<td>这一季度热销冠军《余罪》莫属</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=1" title="查看" target="_blank">1</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>2</td>
											<td>《盗墓笔记》带领你走向神秘的世界</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=3" title="查看" target="_blank">3</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>3</td>
											<td>强烈的爱国情怀有木有！王树增：抗日战争</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=4" title="查看" target="_blank">4</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>4</td>
											<td>程序猿福利！！深入理解Java虚拟机</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=11" title="查看" target="_blank">11</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>5</td>
											<td>充满神秘色彩！！长安十二时辰</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=8" title="查看" target="_blank">8</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>6</td>
											<td>《孕妈妈福利》协和妈妈圈干货分享</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=16" title="查看" target="_blank">16</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
											</td>
										</tr>
									
										<tr>
											<td>7</td>
											<td>亚马逊年度销售冠军书籍</td>
											<td>
												<a href="http://182.61.25.211:80/EShop/info.jsp?bookId=2" title="查看" target="_blank">2</a>
											</td>
											<td>
												<a href="#" title="编辑"><i class="icon-pencil"></i></a>
	              								<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
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


