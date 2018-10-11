<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.demo.model.Emp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보</title>
</head>
<body>
	<%
		List<Emp> emps = (List<Emp>) request.getAttribute("emps");
	%>
	<h1>직원 정보</h1>
	<table>
		<thead>
			<tr>
				<th>No</th>
				<th>Name</th>
				<th>Job</th>
				<th>Salary</th>
			</tr>
		</thead>
		<tbody>
			<%
				// out : 자료형 JspWriter 인 객체로써 서블릿 프레임워크가 JSP처리 시 
				// 자동으로 지원하는 내장객체의 하나이다.
				// 문자열을 파일에 추가하는 역할을 수행한다.
				for (Emp e : emps) {
					out.print("<tr>");
					out.print("<td>"+e.getEmpno()+"</td>");
					out.print("<td>"+e.getEmpno()+"</td>");
					out.print("<td>"+e.getEmpno()+"</td>");
					out.print("<td>"+e.getEmpno()+"</td>");
					out.print("</tr>");
				}
			%>

		</tbody>

	</table>

</body>
</html>