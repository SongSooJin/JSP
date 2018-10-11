<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${pageContext.request.method=='POST'}">
	Ok, Your choice is      
	<c:out value="${param.enter}" />
		<c:choose>
		
			<c:when test="${param.enter=='1'}">
				JAVA<br />
			</c:when>
			
			<c:when test="${param.enter=='2'}">
				ORACLE<br />
			</c:when>
			
			<c:when test="${param.enter=='3'}">
				C#.NET<br />
			</c:when>
			
			<c:otherwise>
				C Language
				<br />
			</c:otherwise>
			
		</c:choose>
	</c:if>
	<!-- action 속성이 없으면 브라우저는 주소창에 URL을 사용한다. -->
	<form method="post">
		Enter a number between 1 and 5: 
		<input type="text" name="enter" /> 
		<input type="submit" value="SUBMIT" /> 
		<br />
	</form>

</body>
</html>