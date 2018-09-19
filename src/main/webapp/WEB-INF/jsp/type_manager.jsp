<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/stylesheets/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/lib/font-awesome/css/font-awesome.css">
    <script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>

	<!-- TreeTable -->
	<link href="${pageContext.request.contextPath }/static/lib/treetable/jquery.treetable.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/static/lib/treetable/jquery.treetable.theme.default.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath }/static/lib/treetable/jquery.treetable.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$("#example-basic-expandable").treetable({
				expandable : true
			});
		});
	</script>
<!--------------->

  </head>
<body>
	
	<%-- <%@include file="/framework.jsp"%> --%>
	<c:import url="/framework.jsp"></c:import>
	<div class="content">
		<div class="header">
			<h1 class="page-title">分类管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="typemanager.jsp">分类管理</a> <span class="divider">/</span></li>
			<li class="active">分类列表管理</li>
		</ul>

		<div class="container-fluid">
			
			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">增加分类</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form  class="form-inline" role="search"
								action="#" method="post">
								<select class="form-control" id="selType">
									<option value="" selected="selected">--请选择--</option>
									<option value="0">一级分类</option>
									<option value="1">二级分类</option>
								</select>
								
								<input type="text" class="form-control" placeholder="请输入一级分类名称"
										name="parent_type_name" />
										 
								<select class="form-control" name="type_id">
								</select>
								<input type="text" class="form-control" placeholder="请输入二级分类名称"
										name="child_type_name" />
								
								
								<button class="btn btn-primary" id="btnSave">
									<i class="icon-save"></i> 保存
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
							<th>分类名称</th>
							<th>分类类型</th>
							<th>类型编号</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						
							<tr data-tt-id="1">
								<td>文学馆</td>
								<td>一级分类</td>
								<td>1</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
								<tr data-tt-id="12" data-tt-parent-id="1">
									<td>小说</td>
									<td>二级分类</td>
									<td>12</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="13" data-tt-parent-id="1">
									<td>文学</td>
									<td>二级分类</td>
									<td>13</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="14" data-tt-parent-id="1">
									<td>传记</td>
									<td>二级分类</td>
									<td>14</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="15" data-tt-parent-id="1">
									<td>青春</td>
									<td>二级分类</td>
									<td>15</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="16" data-tt-parent-id="1">
									<td>动漫</td>
									<td>二级分类</td>
									<td>16</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="17" data-tt-parent-id="1">
									<td>科幻</td>
									<td>二级分类</td>
									<td>17</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="18" data-tt-parent-id="1">
									<td>悬疑</td>
									<td>二级分类</td>
									<td>18</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="19" data-tt-parent-id="1">
									<td>纪实</td>
									<td>二级分类</td>
									<td>19</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="38" data-tt-parent-id="1">
									<td>小说</td>
									<td>二级分类</td>
									<td>38</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							
						
							<tr data-tt-id="2">
								<td>生活馆</td>
								<td>一级分类</td>
								<td>2</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
								<tr data-tt-id="20" data-tt-parent-id="2">
									<td>育儿家教</td>
									<td>二级分类</td>
									<td>20</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="21" data-tt-parent-id="2">
									<td>孕产</td>
									<td>二级分类</td>
									<td>21</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="22" data-tt-parent-id="2">
									<td>健身保健</td>
									<td>二级分类</td>
									<td>22</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="23" data-tt-parent-id="2">
									<td>旅游</td>
									<td>二级分类</td>
									<td>23</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="24" data-tt-parent-id="2">
									<td>美食</td>
									<td>二级分类</td>
									<td>24</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="25" data-tt-parent-id="2">
									<td>家居</td>
									<td>二级分类</td>
									<td>25</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="36" data-tt-parent-id="2">
									<td>育儿家教</td>
									<td>二级分类</td>
									<td>36</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="37" data-tt-parent-id="2">
									<td>育儿家教</td>
									<td>二级分类</td>
									<td>37</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							
						
							<tr data-tt-id="3">
								<td>计算机馆</td>
								<td>一级分类</td>
								<td>3</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
								<tr data-tt-id="26" data-tt-parent-id="3">
									<td>编程语言</td>
									<td>二级分类</td>
									<td>26</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="27" data-tt-parent-id="3">
									<td>办公软件</td>
									<td>二级分类</td>
									<td>27</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="28" data-tt-parent-id="3">
									<td>数据库</td>
									<td>二级分类</td>
									<td>28</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="29" data-tt-parent-id="3">
									<td>操作系统</td>
									<td>二级分类</td>
									<td>29</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
								<tr data-tt-id="30" data-tt-parent-id="3">
									<td>人工智能</td>
									<td>二级分类</td>
									<td>30</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							
						
							<tr data-tt-id="4">
								<td>童书馆</td>
								<td>一级分类</td>
								<td>4</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
								<tr data-tt-id="33" data-tt-parent-id="4">
									<td>幼儿启蒙</td>
									<td>二级分类</td>
									<td>33</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							
						
							<tr data-tt-id="5">
								<td>金融馆</td>
								<td>一级分类</td>
								<td>5</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="6">
								<td>励志馆</td>
								<td>一级分类</td>
								<td>6</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="7">
								<td>艺术馆</td>
								<td>一级分类</td>
								<td>7</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="8">
								<td>科技馆</td>
								<td>一级分类</td>
								<td>8</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="9">
								<td>历史</td>
								<td>一级分类</td>
								<td>9</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="10">
								<td>心理学</td>
								<td>一级分类</td>
								<td>10</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="11">
								<td>军事</td>
								<td>一级分类</td>
								<td>11</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
							
						
							<tr data-tt-id="31">
								<td>测试一级</td>
								<td>一级分类</td>
								<td>31</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
								<tr data-tt-id="32" data-tt-parent-id="31">
									<td>测试二级</td>
									<td>二级分类</td>
									<td>32</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							
						
							<tr data-tt-id="34">
								<td>123</td>
								<td>一级分类</td>
								<td>34</td>
								<td>
									<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
		              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
								</td>
							</tr>
							
								<tr data-tt-id="35" data-tt-parent-id="34">
									<td>123</td>
									<td>二级分类</td>
									<td>35</td>
									<td>
										<a href="/EShopManager/books/queryinfo.action?book_id=" title="编辑"><i class="icon-pencil"></i></a>
			              				<a href="javascript:deleteClick()" title="删除"><i class="icon-remove"></i></a>
									</td>
								</tr>
							
							
						
					</tbody>

				</table>

			</div>
	
		</div>
	
	</div>
	
	
	<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
</body>
</html>