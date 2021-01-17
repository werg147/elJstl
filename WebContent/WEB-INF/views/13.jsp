<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import = "java.util.List" %>
<%@ page import = "vo.UserVo" %>

<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>반복문</h1>

	<h2>자바</h2>
	
	<table border="1">
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
		</tr>
		<%-- <%for(int i=0; i<userList.size(); i++){ %>
		<tr>
			<td><%=userList.get(i).getNo() %></td>
			<td><%=userList.get(i).getName() %></td>
			<td><%=userList.get(i).getEmail() %></td>
		</tr>
		<%} %> --%>
		
		<%for(UserVo vo : userList){ %>
		<tr>
			<td><%=vo.getNo() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getEmail() %></td>
		</tr>
		<%} %>
		
	</table>
	
	<h2>jstl el</h2>
	
	<table border="1">
		<tr>
			<td>no</td>
			<td>name</td>
			<td>email</td>
			<td>index</td>
			<td>count</td>
		</tr>
		
		<c:forEach items="${userList}" var="vo" varStatus="status">
			<tr>
				<td>${vo.no}</td>
				<td>${vo.name}</td>
				<td>${vo.email}</td>
				<td>${status.index}</td>
				<td>${status.count}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>