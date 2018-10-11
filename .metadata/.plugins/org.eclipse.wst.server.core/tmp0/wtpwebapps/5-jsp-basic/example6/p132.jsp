<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.ArrayList" %>  
<%@ page import="com.example.vo.User" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	User user1 = new User(1, "Tom", "Cruise", true);
	User user2 = new User(2, "John", "Doe", false);
	User user3 = new User(3, "Luke", "Skywalker", true);
	List<User> users = new ArrayList<User>();
	users.add(new User(1, "Tom", "Cruise", true));
	users.add(new User(2, "John", "Doe", false));
	users.add(new User(3, "Luke", "Skywalker", true));
	
	request.setAttribute("users", users);
	pageContext.setAttribute("size", users.size());
%>
<body>
	
	<!-- 
		EL 표현식에서 지역변수 멤버변수 자원을 사용할 수 없습니다.
		page, request, session, application 객체가 가진 자원만 
		사용할 수 있습니다.
		EL 표현식에서 에러가 발생해도 예외가 전파되지 않습니다.
	 -->
	<p>1: ${user1.firstName }</p>
	<p>2: ${user2.firstName }</p>
	<p>3: ${user3.firstName }</p>
	<p>4: ${size }</p>
	
	<hr>
	
	<c:set var="number" value="10" scope="page"></c:set>
	<c:set var="number" value="20" scope="request"></c:set>
	<c:set var="number" value="30" scope="session"></c:set>
	<c:set var="number" value="40" scope="application"></c:set>
	
	<!-- EL 표현식은 자원을 page > request > session > application 
	순으로 찾아서 있으면 사용한다. -->
	<p>number = ${number }</p>
	<p>${pageScope.number }</p>
	<p>${requestScope.number }</p>
	<p>${sessionScope.number }</p>
	<p>${applicationScope.number }</p>

</body>
</html>