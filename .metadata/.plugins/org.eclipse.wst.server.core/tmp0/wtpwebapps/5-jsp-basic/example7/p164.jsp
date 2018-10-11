<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 이 페이지를 다운로드 받을때 사용한 URL
	http://localhost:8080/5-jsp-basic/example7/p164.jsp
 -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- http://localhost:8080/5-jsp-basic/example7/first.jsp  -->
	<a href="first.jsp">JSP-1</a><br>
	
	<!-- http://localhost:8080/5-jsp-basic/example7/first.jsp -->
	<a href="<c:url value='/example7/first.jsp'/>">JSP</a><br>
	
	<!-- http://localhost:8080/5-jsp-basic/ -->
	<a href="<c:url value='/' />">프로젝트 컨텍스트 패스 처리가 자동으로 됌</a><br>
	
	<!-- http://localhost:8080  -->
	<a href="/">프로젝트 컨텍스트 패스가 없으므로 연동이 안됌</a><br>

</body>
</html>