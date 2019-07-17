<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	String officeN = request.getParameter("officeN");
	String address = request.getParameter("address");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>농부의 아침</title>
</head>
<body style="text-align: center;">
<p>
	<%= name %>님 <br>
	전화번호 : <%= tel %> <br>
	우편번호 : <%= officeN %> <br>
	상세주소 : <%= address %> <br>
</p>
<span>
	기부되었습니다.
</span>
<a href="home.jsp">돌아가기</a>
</body>
</html>