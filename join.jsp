<%@page import="dgsw.jsp.class1.DbUserManager"%>
<%@page import="dgsw.jsp.class1.MemoryUserManager"%>
<%@page import="dgsw.jsp.class1.UserManager"%>
<%@page import="dgsw.jsp.class1.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("user_id");
	String password = request.getParameter("password");
	String name = request.getParameter("user_name");
	
	User user = new User();
	user.setId(id);
	user.setName(name);
	user.setPassword(password);
	
	//UserManager userManager = MemoryUserManager.getInstance();
	UserManager userManager = new DbUserManager();
	userManager.join(user);
%>

<!DOCTYPE html>
<html>
<head>
<script src="/jsp_study/js/jquery.js">
</script>
<script>

location.href="login.jsp";
</script>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
</body>
</html>