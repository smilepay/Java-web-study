<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = jspbook.ch07.*"%>
<jsp:useBean id = "login" class="jspbook.ch07.LoginBean" scope = "page"/>
<jsp:setProperty name="login" property="*" />
<html>
<head>
<title></title>
</head>
<body>
<center>
<H2>로그인 예제</H2>
<HR>
<%
	if(!login.checkUser()){
		out.println("로그인 실패!!");
	}	
	else{
		out.println("로그인 성공!!");
	}
%>
<HR>
사용자 아이디: <jsp:getProperty name="login" property="userid"/><BR>
사용자 패스워드: <jsp:getProperty name = "login" property="passwd"/>

</center>
</body>/
</html>