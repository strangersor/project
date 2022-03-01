
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"
    import="Model.Porder"
    import="Model.Company"
    import="Factory.Factory"
    %>
 <%
 Porder p=(Porder)session.getAttribute("p");
 Factory f=Dao.Connection.a1.getBean("f",Factory.class);
 List<Object> l=f.getCd().queryNickname(p.getNickname());
 Company c=(Company)l.get(0); 
 
 
 
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
			<td>聯絡人:<td><%=c.getContactperson()%><td>出貨狀態:<td><%=p.show() %>
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
			<tr>
			
			
			
			<td colspan="4" align="center"><a href="querycompanypordersuccess.jsp">回上頁</a>
			<h4>回訂單系統</h4>
		    <a href="../porder/porder.jsp">新增修改訂單</a>
		</table>
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>
<%



%>
</body>
</html>