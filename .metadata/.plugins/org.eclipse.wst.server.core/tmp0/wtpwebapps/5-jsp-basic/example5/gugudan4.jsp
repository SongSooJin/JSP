<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	
	<div class="container">
	<h2>GUGUDAN</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<c:forEach var="i" begin="1" end="9" step="1">
						<th>${i }</th>
					</c:forEach>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="i" begin="1" end="9" step="1">
					<tr>
					<c:forEach var="j" begin="1" end="9" step="1">
						<td>
							${j} x ${i} = ${i * j}
						</td>
					</c:forEach>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>