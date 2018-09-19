<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

			<h1 class="page-title">会员管理</h1>
		</div>

		<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath }/accounts/query">会员管理</a> <span class="divider">/</span></li>
			<li class="active">修改会员信息[${requestScope.user.isOnline==1?"在线":"未在线" }]</li>
		</ul>
		<div class="block-body">
			<form id="uploadForm" action="${pageContext.request.contextPath }/accounts/doupdate" 
			class="form-horizontal" enctype="multipart/form-data" method="post" >
			<input type="hidden" class="form-control" name="userId"
					value='${requestScope.user.userId }'></input>
				<label>头像</label> 
				<input type="file" class="form-control" name="userHeadPic"
							id="userHead" placeholder="请选择头像" />
			
				<label>会员邮箱</label> 
				<input type="text" class="span5" id="email"
					name="userEmail" title="ⓘ提示" data-container="body" value='${requestScope.user.userEmail }'
					data-toggle="popover" data-placement="right" data-content="邮箱不能为空" />

				<label>用户名</label> 
				<input type="text" class="span5" id="username"
					name="userName" title="ⓘ提示" data-container="body" value='${requestScope.user.userName }'
					data-toggle="popover" data-placement="right" data-content="用户名不能为空" />

				<label></label>
				性别:&nbsp;&nbsp;&nbsp;&nbsp;男 
				<input type="radio" class="span1" name="userSex" value="男" 
				${requestScope.user.userSex eq '男'?'checked="checked"':'' } />
				&nbsp;&nbsp;&nbsp;&nbsp;女 
				<input type="radio" class="span1" name="userSex" value="女" 
				${requestScope.user.userSex eq '女'?'checked="checked"':'' }/> 

				<label>手机号码</label> 
				<input type="text" class="span5" id="phone" value='${requestScope.user.userPhone }'
					name="userPhone" title="ⓘ提示" data-container="body"
					data-toggle="popover" data-placement="right" data-content="手机不能为空" />
					
				<label></label>
				激活状态:&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="isActivated" id="isActivated" value="1"
					${requestScope.user.isActivated==1?"checked":"" } />已激活
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="isActivated" id="noActivated" value="0 "
					${requestScope.user.isActivated==0?"checked":"" } />未激活
					
				<label>收货地址</label> 
				<select name="provinceId" id="province" class="span5">
					<option value="">--请选择省--</option>
					<c:forEach items="${requestScope.provincelist }" var="province">
						<option value="${province.provinceid }" 
						${province.provinceid eq requestScope.user.provinceId?'selected="selected"':'' }>${province.province }</option>
					</c:forEach>
				</select> 
				
				<select name="cityId" id="city" class="span5">
					<option value="">--请选择市--</option>
					<c:forEach items="${requestScope.citylist }" var="city">
						<option value="${city.cityid }" 
						${city.cityid eq requestScope.user.cityId?'selected="selected"':'' }>${city.city }</option>
					</c:forEach>
				</select> 
				<select name="areaId" id="area" class="span5" >
					<option value="">--请选择区/县--</option>
					<c:forEach items="${requestScope.arealist }" var="area">
						<option value="${area.areaid }" 
						${area.areaid eq requestScope.user.areaId?'selected="selected"':'' }>${area.area }</option>
					</c:forEach>
				</select> 
				<label>详细地址</label> 
				<input type="text" class="span5" id="address" value='${requestScope.user.userAddress }'
					name="userAddress" title="ⓘ提示" data-container="body"
					data-toggle="popover" data-placement="right"
					data-content="详细地址不能为空" />
				<label>密保问题</label>
				<select name="questionId" id="qustion" class="span5">
					<option value="">--请选择一个问题--</option>
					<c:forEach items="${requestScope.questionlist }" var="question">
						<option value="${question.questionId }" 
						${question.questionId eq requestScope.user.questionId?'selected="selected"':'' }>
						${question.questionTitle }</option>
					</c:forEach>
				</select> 
				<label>答案</label> 
				<input type="text" class="span5" id="answer" value='${requestScope.user.questionAnswer }'
					name="questionAnswer" title="ⓘ提示" data-container="body"
					data-toggle="popover" data-placement="right" data-content="答案不能为空" />
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">修&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改</button>
					<button type="button" class="btn btn-warning"
						onclick=" return cancel();">返&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回</button>
				</div>
			</form>
		</div>
		<ul class="breadcrumb">
			<li><a href="accountmanager.jsp">会员管理</a> <span class="divider">/</span></li>
			<li class="active">修改会员密码</li>
		</ul>
		<div class="block-body">
			<form action="${pageContext.request.contextPath }/accounts/doupdate" 
			class="form-horizontal" role="form" method="post" >
				<label>密码</label> 
				<input type="password" class="span5"
					id="password" name="userPwd" title="ⓘ提示" data-container="body"
					data-toggle="popover" data-placement="right" data-content="密码不能为空" />

				<label>重复密码</label> 
				<input type="password" class="span5"
					id="password2" name="userPwd" title="ⓘ提示" data-container="body"
					data-toggle="popover" data-placement="right"
					data-content="重复密码不能为空" /> 
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">修&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改</button>
					<button type="button" class="btn btn-warning"
						onclick=" return cancel();">返&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回</button>
				</div>
			</form>
		</div>

		<% pageContext.include("/footer.jsp"); %>

	</div>
</body>
	<script src="${pageContext.request.contextPath }/static/js/accounts_update.js"></script>
</html>


