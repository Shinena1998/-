<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.me.ThrowPoker"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="throwp1" class="com.me.ThrowPoker" scope="session"></jsp:useBean>
<jsp:useBean id="throwpp" class="com.me.ThrowPoker" scope="session"></jsp:useBean>
<jsp:useBean id="throwA" class="com.me.AutoDifficult" scope="session"></jsp:useBean>
<% 
throwp1 = (ThrowPoker)session.getAttribute("throwP1");

/*System.out.println(throwp1.It.auto.get(0).colour+throwp1.It.auto.get(0).Num+throwp1.It.auto.get(1).colour+throwp1.It.auto.get(1).Num
		+throwp1.It.auto.get(2).colour+throwp1.It.auto.get(2).Num+
		throwp1.It.auto.get(3).colour+throwp1.It.auto.get(3).Num+
		throwp1.It.auto.get(4).colour+throwp1.It.auto.get(4).Num
		); */
if(request.getParameter("p1") != null)
	throwp1.p1=null;
if(request.getParameter("p2") != null)
	throwp1.p2=null;
if(request.getParameter("p3") != null)
	throwp1.p3=null;
if(request.getParameter("p4") != null)
	throwp1.p4=null;
if(request.getParameter("p5") != null)
    throwp1.p5=null;
throwp1.throwP(throwp1.p1, throwp1.p2, throwp1.p3, throwp1.p4, throwp1.p5); 
session.setAttribute("throwP1", throwp1);
throwp1.str=(String)session.getAttribute("level");
throwp1.g=(int)session.getAttribute("g");
out.println(throwp1.str);
out.println(throwp1.g);
throwA.autoDifficult(throwp1.It.auto);
//throwA.pokerGroup();
throwp1.makeAutoPoker();
throwpp=throwp1;
session.setAttribute("throwpp", throwpp);
request.getRequestDispatcher("addGrade1.jsp").forward(request,response);

%>

</body>
</html>