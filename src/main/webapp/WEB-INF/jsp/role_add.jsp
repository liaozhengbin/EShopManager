<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/lib/bootstrap/css/bootstrap.css"/>
<script src="${pageContext.request.contextPath }/static/lib/jquery-1.7.2.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- 提示框 -->
<script type="text/javascript" src="js/tooltips.js"></script>
<!-- 提示框 -->

<title>管理区域</title>
  <style type="text/css">
      .box {
          width: 60%;
          margin: 50px auto;
          padding: 20px;
          padding-left: 50px;
          border: 1px #ccc dashed;
      }
      .background-head{
			background-image: url(images/-1.jpg);
			background-attachment: fixed;
			background-repeat: no-repeat;
			background-size: 100%;
			height:210px;
			width:250px
		}
  </style>
</head>


<body>
<%
	pageContext.include("/framework.jsp");
%>

<div class="box">
    <form id="uploadForm" action="${pageContext.request.contextPath }/addRole"  method="post">
        <div class="form-group">
            <label for="user_id" class="col-sm-2 control-label">角色名称:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="role_name" 
                id="role_name" />
            </div>
        </div>
        <div class="form-group">
            <label for="user_id" class="col-sm-2 control-label">拥有权限:</label>
            <c:forEach items="${requestScope.rightList }" var="per" >
			<input type="checkbox" name="permission" value="${per.permission_id}"/>${per.permission_des}&nbsp;&nbsp;
			
			</c:forEach>
			
        </div>
        
        <div class="form-group">
        
            <div class="col-sm-offset-2 col-sm-10">
            	
                <button type="submit" class="btn btn-primary" >添&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;加</button>
                <button type="button" class="btn btn-warning"
                        onclick=" return cancel();">返&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;回</button>
            </div>
        </div>
    </form>
    <%
		pageContext.include("/footer.jsp");
	%>
</div>


 <script type="text/javascript">
	
 	function cancel(){
		window.history.go(-1);
	}
	
</script>

</body>
</html>
