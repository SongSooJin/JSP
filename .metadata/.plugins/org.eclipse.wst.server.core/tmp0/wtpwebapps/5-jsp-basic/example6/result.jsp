<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
%>	
	<p><%=name %></p>
	<hr>
<%
	Enumeration<String> enumer = request.getParameterNames();
	while(enumer.hasMoreElements()){
		String key = enumer.nextElement();
		out.print("<p>"+key+"</p>");
	}
%>	
	<hr>
<%
	String[] fruits = request.getParameterValues("fruits");
	out.print("<p>");
	for(String f : fruits){
		out.print(f + ", ");
	}
	out.print("</p>");
%>	
	<hr>

	<c:forEach var="f" items="${paramValues.fruits }">
		${f }, 
	</c:forEach>

	<hr>
	
	<p>was = ${initParam.was }</p>
	<p>version = ${initParam.version }</p>
	
</body>
</html>