<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
	</head>

	<body>
		<font color="blue" size="3">当前用户:<%=request.getSession().getAttribute("userName") %></font><hr>
		<a href=viewBook.jsp target=main title="viewBook.jsp">浏览图书</a>
		<br>
        <hr>
		<a href=listBook.jsp target=main title="listBook.jsp">书架维护</a>	
	</body>
</html>
