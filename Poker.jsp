<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户加分以及难易度</title>
</head>
<body>
    <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
        <img src="/zha/src/background/pokerback.jpg" height="100%" width="100%"/>    
        </div> 
<form action="doSelect.jsp" method = "post">
<table>
<h3>总分选择</h3>
<p><input type = "checkBox" name = "10" value = "10">10分
  <input type = "checkBox" name = "20" value = "20">20分
  <input type = "checkBox" name = "30" value = "30">30分</p>
<h3>难度选择</h3>
<p><input type = "checkBox" name = "easist" value = "easist">简单
   <input type = "checkBox" name = "simple" value = "simple">容易
   <input type = "checkBox" name = "normal" value = "normal">普通
   <input type = "checkBox" name = "high" value = "high">困难</p><br>
 <td colspan="2"> <input type="submit" value= "选择"></td>

</table>
</form>
</body>
</html>