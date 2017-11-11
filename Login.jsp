<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
<!--<embed src="/src/music/123.mp3"Autostart="true" loop="true" hidden="true"></embed>-->
<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="/zha/src/background/710658.jpg" height="100%" width="100%"/>    
</div> 
<%
//int i = (int)session.getAttribute("g");

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
<h1>用户登录</h1>
<form action="doLogin.jsp" method = "post">
<table>
<tr>
<td>用户名：</td>
<td><input type = "text" name = "name" value = ""/></td>
</tr>
<tr>
<td>密码：</td>
<td><input type = "password" name = "password" value = ""/></td>
</tr>
<tr>
<td colspan = "2"><input type = "submit" value = "登录"/></td>
<td></td>
</table>
</form>
</body>
</html>