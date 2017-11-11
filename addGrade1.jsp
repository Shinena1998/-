<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.me.AddGrade"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加分</title>
</head>
<body>
		<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
				<img src="/zha/src/background/717295.png" height="100%" width="100%"/>    
				</div> 
<h1>玩家加分</h1>
<jsp:useBean id="grade1" class="com.me.AddGrade" scope="request"></jsp:useBean>
<%
if(request.getAttribute("grade")==null){
	grade1.x=0;
	grade1.playG=0;
	grade1.n=0;
	grade1.autoG=0;
}
else{
	grade1 = (AddGrade)request.getAttribute("grade");
}


//out.println(grade1.autoG +" "+ grade1.n);
    
%>
<form action="doaddGrade1.jsp" method="post">
<table>
<tr>
<p>玩家目前加分：<%out.println(grade1.playG);%></p>
<p>玩家本次加分：<%out.println(grade1.x);%></p>
<p>电脑目前加分：<%out.println(grade1.autoG);%></p>
<p>电脑本次加分：<%out.println(grade1.n);%></p>
<p>
<input type="checkbox" name="0" value="0">0分
<input type="checkbox" name="1" value="1">1分
<input type="checkbox" name="3" value="3">3分
<input type="checkbox" name="5" value="5">5分</p>
</tr>
<tr>
<input type = "submit" value = "完成">
</tr>
</table>
</form>

<a href="compare.jsp"><input type = "submit" value = "结束"></a>
</body>
</html>