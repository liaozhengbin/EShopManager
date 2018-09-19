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
	<%
		pageContext.include("/framework.jsp");
	%>
	<div class="content">
		<div class="header">
			<h1 class="page-title">图书管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a
				href="${pageContext.request.contextPath }/bookmanager.jsp">图书管理</a>
				<span class="divider">/</span></li>
			<li class="active">查看图书信息</li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">

				<div class="block">
					<a href="#page-filter" class="block-heading" data-toggle="collapse">筛选</a>
					<div id="page-filter" class="block-body collapse in">
						<div class="search-well">
							<form class="form-inline" role="search"
								action="${pageContext.request.contextPath }/books/query"
								method="post">
								<input class="form-control" placeholder="请输入书名" name="bookName"
									value="${requestScope.bookName }" type="text"> <input class="form-control"
									placeholder="请输入作者" name="bookAuthor" value="${requestScope.bookAuthor }" type="text">

								<select class="form-control" name="status">
									<option value="-1" selected="selected">--请选择--</option>
									<option value="1">上架</option>
									<option value="0">下架</option>
								</select> <select class="form-control" name="typeId">
									<option value="-1" selected="selected">--请选择分类--</option>
									<c:forEach items="${requestScope.typelist }" var="type">
										<option ${type.typeId==requestScope.typeId?"selected":"" } value="${type.typeId }">${type.typeName }</option>
									</c:forEach>
								</select>
								<button type="submit" class="btn btn-default">
									<i class="icon-search"></i> 查询
								</button>

							</form>
						</div>
					</div>
				</div>
			</div>

			<div class="row-fluid">

				<span>共有 <b>${requestScope.totalCount }</b> 条记录
				</span>

				<div class="well">
					<div class="search-well">		
						<form class="form-inline" action="${pageContext.request.contextPath }/books/updateBookInfo/${param.bookId}">
							<select name="control">
								<option value="" selected="selected">--请选择--</option>
								<option value="garbage">回收站</option>
								<option value="status1">上架</option>
								<option value="status0">下架</option>
								<option value="is_new1">新品</option>
								<option value="is_new0">取消新品</option>
								<option value="is_hot1">热卖</option>
								<option value="is_hot0">取消热卖</option>
							</select>
							<button id="btnUpdate" class="btn" type="button">
								<i class="icon-legal"></i> 操作
							</button>
						</form>
					</div>
					<table class="table">
						<thead>
							<tr id="theTableTitle">
								<th><input id="all_ck" type="checkbox"> 编号</th>
								<th>书名</th>
								<th>价格</th>
								<th>上架</th>
								<th>新品</th>
								<th>热销</th>
								<th>作者</th>
								<th>所属分类</th>
								<th>库存</th>
								<th>操作</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach items="${requestScope.booklist }" var="book">
								<tr>
									<td><input id="ck" name="ck" value="${book.bookId }"
										type="checkbox">${book.bookId }</td>
									<td>${book.bookName }</td>
									<td>￥${book.bookPrice }</td>
									<td><a href="javascript:updateIsOnline(${book.bookId },${book.status })"><img
											src="${pageContext.request.contextPath }/static/images/${book.status==1?'yes':'no' }.gif"></a>

									</td>
									<td><a href="javascript:updateIsNew(${book.bookId },${book.isNew })"><img
											src="${pageContext.request.contextPath }/static/images/${book.isNew>0?'yes':'no' }.gif"></a>

									</td>
									<td><a href="javascript:updateIsHot(${book.bookId },${book.isHot })"><img
											src="${pageContext.request.contextPath }/static/images/${book.isHot>0?'yes':'no' }.gif"></a>

									</td>
									<td>${book.bookAuthor }</td>
									<td>${book.tbType.typeName }</td>
									<td>${book.storeCount }</td>
									<td><a
										href="http://172.16.7.23:8080/eshop/book_controller/selectproductInfo.action?bookId=${book.bookId }"
										title="查看" target="_blank"> <i class="icon-search"></i>
									</a> <a

										href="${pageContext.request.contextPath }/books/updatebookselect/${book.bookId}"title="编辑"><i class="icon-pencil"></i></a> <a

										href="javascript:deleteClick(${book.bookId })" title="删除">
											<i class="icon-remove"></i>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>
				<div class="pagination pagination myul">
					<c:set var="urlstr" value="${pageContext.request.contextPath }/books/query?book_name=${param.book_name }&book_author=${param.book_author }&status=${param.status }&currentPage="/>

					<ul>
						<c:if test="${requestScope.currentPage==1}">
							<li class="disabled"><a href='#'>«首页</a><a href='#'>上一页</a></li>
						</c:if>
						<c:if test="${requestScope.currentPage>1}">
							<li><a href='${urlstr }1'>«首页</a> <a
								href='${urlstr }${requestScope.currentPage-1}'>上一页</a></li>
						</c:if>

						<c:forEach var="i" begin="${requestScope.beginPage }"
							end="${requestScope.endPage }">
							<li class='${requestScope.currentPage==i?"active":"" }'><a
								href='${urlstr }${i }'>${i }</a></li>
						</c:forEach>

						<c:if test="${requestScope.currentPage==requestScope.totalPage}">
							<li class="disabled"><a href='#'>下一页</a><a href='#'>尾页»</a></li>
						</c:if>
						<c:if test="${requestScope.currentPage<requestScope.totalPage}">
							<li><a href='${urlstr }${requestScope.currentPage+1 }'>下一页</a>
								<a href='${urlstr }${requestScope.totalPage }'>尾页»</a></li>
						</c:if>
					</ul>
				</div>

			</div>

			<%
				pageContext.include("/footer.jsp");
			%>
		</div>


	</div>
</body>


<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/tooltips.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/books.js"></script>




</html>


