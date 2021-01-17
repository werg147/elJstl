<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	파라미터
	
	<!-- http://localhost:8088/eljstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->
	
	<h2>자바문법 파라미터 값 꺼내쓰기</h2>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
	%>
	
	id=<%=id %> <br>
	pw=<%=pw %> <br>
	name=<%=name %> <br>
	num1=<%=num1 %> <br>
	num2=<%=num2 %> <br>
	
	<br>
	<br>
	<br>
	
	<h2>el 파라미터 값 꺼내쓰기</h2>
	id=${param.id} <br>
	pw=${param.pw} <br>
	name=${param.name} <br>
	num1=${param.num1} <br>
	num2=${param.num2} <br>
	
	sum=${param.num1 + param.num2} <br>
	sum=${param.num1} + ${param.num2} 주의<br>
	
</body>
</html>