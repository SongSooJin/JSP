<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="com.example.vo.User" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	User u = new User();
	u.setId(100);
	u.setFirstName("John");
	u.setLastName("Doe");
	u.setActive(true);
	request.setAttribute("u", u);
%>
<c:set var="ename" value="SMITH" scope="page" />
<c:set var="ename" value="<%=u.getFirstName() %>" scope="request"/>
<c:set var="ename" value="${ u.firstName }${ u.lastName }" scope="request" />

</body>
</html>