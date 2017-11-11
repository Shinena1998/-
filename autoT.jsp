<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="autoT" class="com.me.Initial"></jsp:useBean>
<jsp:useBean id="grade3" class="com.me.AddGrade" scope="session"></jsp:useBean>
<%
autoT.handPoker();
autoT.sort();
//autoT.throwPoker();
grade3.playG=5;
grade3.autoG=5;
session.setAttribute("autoT", autoT);
session.setAttribute("grade3", grade3);
response.sendRedirect("compare2.jsp");
//request.getRequestDispatcher("compare2.jsp").forward(request, response);
%>
</body>
</html>