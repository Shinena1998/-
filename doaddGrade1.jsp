<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.me.ThrowPoker,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="grade" class="com.me.AddGrade" scope="request"></jsp:useBean>
<jsp:useBean id="grade2" class="com.me.AddGrade" scope="session"></jsp:useBean>
<jsp:useBean id="throwpp1" class="com.me.ThrowPoker" scope="request"></jsp:useBean>
<%
if(grade2!= null){
	grade.playG = grade2.playG;
	grade.autoG = grade2.autoG;
}
if(request.getParameter("0")!=null)
	{
	grade.playG = 0 + grade.playG;
	grade.x = 0;
	}
if(request.getParameter("1")!=null){
	grade.playG = 1 + grade.playG;
	grade.x = 1;
}
if(request.getParameter("3")!=null){
	grade.playG = 3 + grade.playG;
	grade.x = 3;
}

if(request.getParameter("5")!=null){
	grade.playG = 5 + grade.playG;
	grade.x = 5;
}

throwpp1=(ThrowPoker)session.getAttribute("throwpp");
//out.println(throwpp1.auto.get(0).colour);
grade.auto=throwpp1.auto;
grade.autoAddGradeRular();

grade.initialize();

grade2.playG=grade.playG;
grade2.autoG=grade.autoG;
//out.println(grade2.autoG);
session.setAttribute("Grade", grade2);
request.setAttribute("grade", grade);
request.getRequestDispatcher("addGrade1.jsp").forward(request,response);
%>
</body>
</html>