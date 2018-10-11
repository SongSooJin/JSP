<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>first.jsp</h2>
<%
	pageContext.getOut().println("Hello\n");
	out.println("Hello<br>");
	pageContext.include("date.jsp");
%>	
</body>
</html>