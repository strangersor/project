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
			
			<h1>訂單刪除成功</h1>
			
			
		
	    <h4>回訂單系統</h4>
		<a href="../porder/porder.jsp">新增修改訂單</a>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>