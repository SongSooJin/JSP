<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		request.setAttribute("message", "Hello World!");
		String title = (String) request.getAttribute("message");
	%>
	
	<h3>show-data.jsp</h3>
	<!-- http://localhost:8080/5-jsp-basic/show-data.jsp -->
		
	<p>1. <%out.print(title);%></p>
	<p>2. <%=title%></p>
	<hr>
	<!-- EL 표기식이 사용할 수 있는 page,request,session.application 객체가
	직접 갖고있는 자원에 한정된다. -->
	<p>3. ${title } </p>
	<p>4. ${message } </p>
	
	<!-- 
		JSP 수정 후 서버를 재기동 하지 않아도 사용자가 그 변화를 확인 할 수 있다.
		이는 스크립트 프로그래밍의 특징으로서, JSP 코드 그대로 쓰는게 아니라
		서블릿 프레임워크가 Java 변경한 후 사용하기 때문이다.
		컴파일 랭귀지  vs 스크립트 랭귀지
		JSP 스크립트 랭귀지 특성 갖는다. 서블릿이 변경날짜를 체크해서 
		재 처리하기 때문에 서버 재기동 없이 적용이 가능하다.  
	 -->
	
</body>
</html>