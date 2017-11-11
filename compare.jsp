<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.me.ThrowPoker,com.me.PokerGrade,com.me.AddGrade"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
		<div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
				<img src="/zha/src/background/725534.jpg" height=750 width="100%"/>    
				</div> 
<jsp:useBean id="throwP" class="com.me.ThrowPoker" scope="session"></jsp:useBean>
<jsp:useBean id="compare" class="com.me.CompareHandPokerWindow" scope="session"></jsp:useBean>
<jsp:useBean id="pgrade" class="com.me.PokerGrade" scope="session"></jsp:useBean>
<jsp:useBean id="Grade" class="com.me.AddGrade" scope="session"></jsp:useBean>
<%
throwP = (ThrowPoker)session.getAttribute("throwpp");
out.println("玩家手牌：");
//out.println(Throwp1.It.player1.get(0).colour+ Throwp1.It.player1.get(0).Num+
//		Throwp1.It.player1.get(1).colour+Throwp1.It.player1.get(1).Num+
//	Throwp1.It.player1.get(2).colour+Throwp1.It.player1.get(2).Num);
%>
<img src=<%="/zha/src/card/card_"+throwP.It.player1.get(0).color+"_"+throwP.It.player1.get(0).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.It.player1.get(1).color+"_"+throwP.It.player1.get(1).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.It.player1.get(2).color+"_"+throwP.It.player1.get(2).num+".jpg"%> width=200 height=300>
      
<br>
<%
out.println("电脑手牌：");
//out.println(Throwp1.auto.get(0).colour+ Throwp1.auto.get(0).Num+
//		Throwp1.auto.get(1).colour+Throwp1.auto.get(1).Num+
//	Throwp1.auto.get(2).colour+Throwp1.auto.get(2).Num);
%>
<img src=<%="/zha/src/card/card_"+throwP.auto.get(0).color+"_"+throwP.auto.get(0).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.auto.get(1).color+"_"+throwP.auto.get(1).num+".jpg"%> width=200 height=300>
<img src=<%="/zha/src/card/card_"+throwP.auto.get(2).color+"_"+throwP.auto.get(2).num+".jpg"%> width=200 height=300>
<br>
<%
int b = 2;
	pgrade=(PokerGrade)session.getAttribute("pg");

Grade=(AddGrade)session.getAttribute("Grade");
compare.compare(throwP.It.player1, throwP.auto);//比较手牌大小It.auto为弃前五张牌。auto为弃后三张牌
int a = compare.compareHandPoker();
if (a == 1){
	out.println("恭喜你赢了");	
	pgrade.b=a;
	pgrade.winGradeA=Grade.autoG;
	b=pgrade.pokerGrade();
}else if(a == -1){
	pgrade.b=a;
	pgrade.winGradeP=Grade.playG;
    out.println("还差一点，在努力吧");
	b=pgrade.pokerGrade();
}else {
	pgrade.b=a;
	pgrade.winGradeA=Grade.autoG;
	out.println("旗鼓相当");
	b=pgrade.pokerGrade();
}
request.setAttribute("b", b);
if(b == 1||b == -1)
	request.getRequestDispatcher("end.jsp").forward(request, response);
out.println("玩家分数为："+ pgrade.startPlayerGrade+"电脑的分数为："+ pgrade.startAutoGrade);
Grade.autoG=0;
Grade.playG=0;
session.setAttribute("Grade1", Grade);
session.removeAttribute("Grade");
session.removeAttribute("pg");
session.setAttribute("pg",pgrade);
session.removeAttribute("throwP");
session.removeAttribute("throwP1");
%>
<br>
<h3>是否继续</h3>
<a href="setPoker.jsp"><img alt="" 
src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1671731125,45732000&fm=200&gp=0.jpg" 
width = "30" height = "30"></a>
<a href="end.jsp"><img alt="" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1509178025406&di=9bd4a871306c1e9cbb28f1a36c4bd682&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Ff703738da97739123ca4de5af3198618367ae20f.jpg"
width = "30" height = "30"></a>
</body>
</html>