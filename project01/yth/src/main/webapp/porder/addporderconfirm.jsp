<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"
    import="Model.Porder"
    import="Model.Company"%>
 <%
 /*
 1.接收
 2.new porder()
 3.轉session
 */
 Company c=(Company)session.getAttribute("c");
 String A=request.getParameter("A");
 String AP=request.getParameter("AP");
 String B=request.getParameter("B");
 String BP=request.getParameter("BP");
 String C=request.getParameter("C");
 String CP=request.getParameter("CP");
 String D=request.getParameter("D");
 String DP=request.getParameter("DP");
 String E=request.getParameter("D");
 String EP=request.getParameter("DP");
 String shipd=request.getParameter("shipd");
 
 Porder p=new Porder();
 p.setA(A);
 p.setAP(AP);
 p.setB(B);
 p.setBP(BP);
 p.setC(C);
 p.setCP(CP);
 p.setD(D);
 p.setDP(DP);
 p.setE(E);
 p.setEP(EP);
 p.setShipd(shipd);
 p.setUnfinishStatus();
 p.setPorderD();
 p.setNickname(c.getNickname());
 
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<title>Insert title here</title>
</head>
<body>
	<table width=600 align=center border=1>
		<tr>
			<td height=100 align=center><jsp:include page="title.jsp"/>
		<tr>
			<td height=400 align=center>
		<table>	
			<h3>這是<%=c.getNickname()%>的訂單</h3>
			<tr>
			<td>訂單序號:<td><%=p.getPordern()%><td>客戶名稱:<td><%=c.getName()%>
			<tr>
			<td>統編:<td><%=c.getTaxid() %><td>訂單日期:<td><%=p.getPorderd()%>
			<tr>
			<td>電話:<td><%=c.getPhone()%><td>出貨日期:<td><%=p.getShipd()%>
			<tr>
			<td>聯絡人:<td><%=c.getContactperson()%><td><td>
			<tr>
			<td>地址:<td colspan="3"><%=c.getAddress()%>
			<tr>
			<td colspan="2" align="center">品名<td align="right" colspan="2">數量
			<tr>
			<td align="center" colspan="2"><%=p.getA()%><td align="right" colspan="2"><%=p.getAP()%>
			<tr>
			<td align="center" colspan="2"><%=p.getB()%><td align="right" colspan="2"><%=p.getBP()%>
			<tr>
			<td align="center" colspan="2"><%=p.getC()%><td align="right" colspan="2"><%=p.getCP()%>
			<tr>
			<td align="center" colspan="2"><%=p.getD()%><td align="right" colspan="2"><%=p.getDP()%>
			<tr>
			<td align="center" colspan="2"><%=p.getE()%><td align="right" colspan="2"><%=p.getEP()%>
			
			
			<td colspan="4" align="center"><a href="confirmPorderController">確定</a>
		</table>
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>
<%

session.setAttribute("p", p);

%>
</body>
</html>