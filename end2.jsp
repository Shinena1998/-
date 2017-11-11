<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.me.Initial,com.me.ThrowPoker"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
				<img src="/zha/src/background/740310.jpg" height="100%" width="100%"/>    
				</div> 
<jsp:useBean id="throwP" class="com.me.Initial" scope = "page"></jsp:useBean>
<% 
throwP= (Initial)session.getAttribute("autoT");
int c = 0;
if(request.getAttribute("b")!=null)
c = (int)request.getAttribute("b");
String str = null;
if(c == 1)
	str = "恭喜你，你赢了！";
if(c == -1)
	str = "你输了，真是太遗憾了！";
if(c == 0)
	str="下次再来玩吧！";
%>
<%
if(c!=0){

out.println("玩家手牌：");
//out.println(Throwp1.It.player1.get(0).colour+ Throwp1.It.player1.get(0).Num+
//		Throwp1.It.player1.get(1).colour+Throwp1.It.player1.get(1).Num+
//	Throwp1.It.player1.get(2).colour+Throwp1.It.player1.get(2).Num);

%>
<img src=<%="/zha/src/card/card_"+throwP.player1.get(0).color+"_"+throwP.player1.get(0).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.player1.get(1).color+"_"+throwP.player1.get(1).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.player1.get(2).color+"_"+throwP.player1.get(2).num+".jpg"%> width=200 height=300>
<%}%>
<br>
<%
if(c!=0){
out.println("电脑手牌：");
//out.println(Throwp1.auto.get(0).colour+ Throwp1.auto.get(0).Num+
//		Throwp1.auto.get(1).colour+Throwp1.auto.get(1).Num+
//	Throwp1.auto.get(2).colour+Throwp1.auto.get(2).Num);

%>
<img src=<%="/zha/src/card/card_"+throwP.auto.get(0).color+"_"+throwP.auto.get(0).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.auto.get(1).color+"_"+throwP.auto.get(1).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.auto.get(2).color+"_"+throwP.auto.get(2).num+".jpg"%> width=200 height=300>
<%}%>
<br>
<%
session.removeAttribute("throwp1");
session.removeAttribute("throwpp");
session.removeAttribute("pg");
session.removeAttribute("g");
session.removeAttribute("level");
session.removeAttribute("name");
session.removeAttribute("password");
session.removeAttribute("grade3");
session.removeAttribute("Grade");
session.removeAttribute("autoT");
session.removeAttribute("throwP");
session.removeAttribute("throwP1");
%>
<br>
<h1><font color = "white"><%out.println(str) ;%></font></h1>
</body>
</html>