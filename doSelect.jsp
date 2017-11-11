<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user1" class="com.me.EasyOrDiffierent" scope = "session"></jsp:useBean>
<jsp:useBean id="pg" class="com.me.PokerGrade" scope="session"></jsp:useBean>
<%
if(request.getParameter("10")== null&&request.getParameter("20")== null&&request.getParameter("30")== null)
    user1.setG(20);
if(request.getParameter("easist")==null&&request.getParameter("simple")==null&&request.getParameter("normal")==null&&request.getParameter("high")==null)
	user1.setStr("normal");
if(request.getParameter("10")!= null)
    user1.setG(10);
else if(request.getParameter("20")!= null)
	user1.setG(20);
else if(request.getParameter("30")!= null)
	user1.setG(30);

if(request.getParameter("easist")!=null)
	user1.setStr("easist") ;
if(request.getParameter("simple")!=null)
		user1.setStr("simple");
if(request.getParameter("normal")!=null)
	user1.setStr("normal");
if(request.getParameter("high")!=null)
	user1.setStr("high level");

pg.pokerGrade(user1.getG());
session.setAttribute("pg", pg);
session.setAttribute("g", user1.getG());
session.setAttribute("level", user1.getStr());
request.getRequestDispatcher("setPoker.jsp").forward(request, response);
%>
</body>
</html>