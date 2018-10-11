<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp" method="post">
		좋아하는 과일을 선택하세요<br><br> 
		
		이름 : <input type="text" name="name" value="Tom"/><br> 
		
		<input type="checkbox" name="fruits" value="사과">사과 
		<input type="checkbox" name="fruits" value="딸기">딸기 
		<input type="checkbox" name="fruits" value="참외">참외 
		<input type="checkbox" name="fruits" value="수박">수박 
		<input type="checkbox" name="fruits" value="귤">귤 <br><br>
		
		<input type="submit"><input type="reset">
	</form>
</body>
</html>