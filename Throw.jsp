<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>玩家弃牌界面</title>
</head>
<body>
    <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
    <img src="/zha/src/background/12345.jpg" height="100%" width="100%"/>    
    </div> 
<jsp:useBean id="throwP" class="com.me.ThrowPoker" scope="session"></jsp:useBean>
<h1>请选择弃牌</h1>
<h3>只能弃两张牌，不能多弃或者少弃</h3>
<%
throwP.initialize();
session.setAttribute("throwP1", throwP);
%>

<form action="doThrow.jsp" method="post">
<table>
<tr>
<td><input type = "checkBox" name="p1" value="1">
    <img src=<%="/zha/src/card/card_"+throwP.It.player1.get(0).color+"_"+throwP.It.player1.get(0).num+".jpg"%> width=200 height=300>
    
         <!-- <%out.println(throwP.p1);%> -->
    <input type = "checkBox" name="p2" value="1">
    <img src=<%="/zha/src/card/card_"+throwP.It.player1.get(1).color+"_"+throwP.It.player1.get(1).num+".jpg"%> width=200 height=300>
    
           <!-- <%out.println(throwP.p2);%> -->
    <input type = "checkBox" name="p3" value="1">
    <img src=<%="/zha/src/card/card_"+throwP.It.player1.get(2).color+"_"+throwP.It.player1.get(2).num+".jpg"%> width=200 height=300>
    
           <!-- <%out.println(throwP.p3);%> -->
    <input type = "checkBox" name="p4" value="1">
    <img src=<%="/zha/src/card/card_"+throwP.It.player1.get(3).color+"_"+throwP.It.player1.get(3).num+".jpg"%> width=200 height=300>
    
           <!-- <%out.println(throwP.p4);%> -->
    <input type = "checkBox" name="p5" value="1">
    <img src=<%="/zha/src/card/card_"+throwP.It.player1.get(4).color+"_"+throwP.It.player1.get(4).num+".jpg"%> width=200 height=300>
    
           <!--<%out.println(throwP.p5);%>--></td>
<tr><tr><tr><tr><tr><tr><tr><tr><tr>
 <td colspan="1"><input type="submit" value= "完成"></td>
 </table>
 </form>
</body>
</html>