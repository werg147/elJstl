<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.UserVo" %>


<h1>세션값 사용</h1>

<h2>자바</h2>

<%
	UserVo authUser =  (UserVo)session.getAttribute("authUser");
%>

        <div id="header">
			<h1><a href="/mysite2/main">MySite</a></h1>
			<%if(authUser==null){ %>
			<ul>
				<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
				<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
			</ul>
			<%} else { %>
			<ul>
				<li><%=authUser.getName() %>님 안녕하세요^^</li>
				<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
				<li><a href="/mysite2/user?action=modifyForm">회원정보수정</a></li>
			</ul>
			<%} %>
		</div>
		<!-- //header -->


<h2>el</h2>
		<div id="header">
				<h1><a href="/mysite2/main">MySite</a></h1>
				<%if(authUser==null){ %>
				<ul>
					<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
					<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
				</ul>
				<%} else { %>
				<ul>
					<li>${authUser.name}님 안녕하세요^^</li>
					<li>${sessionScope.authUser.name}님 안녕하세요^^</li>
					<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
					<li><a href="/mysite2/user?action=modifyForm">회원정보수정</a></li>
				</ul>
				<%} %>
			</div>
			<!-- //header -->
