<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		파라미터 키값과 클래스내 멤버변수명이 같으면 setter 메소드를 사용하여
		파라미터 값을 객체에 멤버변수에 할당합니다.
	 -->
	<jsp:useBean id="user" class="com.example.vo.User" 
		scope="page">
		<%-- 
		<jsp:setProperty name="user" property="id"/>
		<jsp:setProperty name="user" property="firstName"/>
		<jsp:setProperty name="user" property="lastName"/>
		<jsp:setProperty name="user" property="active"/>
		 --%>
		<jsp:setProperty name="user" property="*"/>
	</jsp:useBean>
	<ul>
		<li><%=user.getId() %></li>
		<li><%=user.getFirstName() %></li>
		<li><%=user.getLastName() %></li>
		<li><%=user.isActive() %></li>
	</ul>
</body>
</html>