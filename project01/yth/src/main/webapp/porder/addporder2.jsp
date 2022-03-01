<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"
    import="Model.Company"%>
<%

Company c=(Company)session.getAttribute("c");



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
		<form action="addporderconfirm.jsp" method="post">
		<h3>目前新增<%=c.getNickname() %>的訂單</h3>
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
		<td colspan="2" align="center"><input type="submit" value="建立訂單">
		</table>
		
		
		
		
		
		
		
		
		</form>
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>