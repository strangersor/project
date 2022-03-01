
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"
    import="Model.Porder"
    import="Factory.Factory"
    import="java.util.List"
    import="Model.Company"%>
<% 
Porder p =(Porder)session.getAttribute("p");
Factory f=Dao.Connection.a1.getBean("f",Factory.class);
List l=f.getCd().queryNickname(p.getNickname());
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
		<td align=center><h3>請填入欲修改訂單,不用修改的部分可以留白</h3><br>
		<h3>目前修改<%=c.getNickname() %>的訂單</h3>
	    <form action="updateUnfinishPorderController2" method="post">
		<table width=400 align="center" >
		
		<tr>
		<td align=center>品名<td align=center>數量
		<tr>
		<td><input type="text" style="width:300px;" name="A"><td align=center><input type="text" style="width:50px;" name="AP">
        <tr>
		<td><input type="text" style="width:300px;" name="B"><td align=center><input type="text" style="width:50px;"name="BP">
		<tr>
		<td><input type="text" style="width:300px;" name="C"><td align=center><input type="text" style="width:50px;" name="CP">
		<tr>
		<td><input type="text" style="width:300px;" name="D"><td align=center><input type="text" style="width:50px;" name="DP">
		<tr>
		<td><input type="text" style="width:300px;" name="E"><td align=center><input type="text" style="width:50px;" name="EP">
		<tr>
		<td align=center>出貨日:(範例:20220101)<td><input type="text"  style="width:100px;" name="shipd">
		<tr>
		<td colspan="2" align="center"><input type="submit" value="修改訂單">
		</form>
		</table>
		<tr>
			<td height=400 align=center>
			<h2>原始訂單資料如下</h2>
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
			
		</table>
		
		<a href="updateunfinishporder.jsp">回上頁</a>	
		<h4>回訂單系統</h4>
		<a href="../porder/porder.jsp">新增修改訂單</a>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>