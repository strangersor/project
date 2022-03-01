<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
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
			<a href="addporder.jsp">1)新增訂單</a><br>
			<a href="queryunfinishporder.jsp">2)查詢未完成訂單</a><br>
			<a href="updateunfinishporder.jsp">3)修改未完成訂單</a><br>		
			<a href="querymonth.jsp">4)查詢最近訂單</a><br>
			<a href="querycompanyporder.jsp">5)查詢客戶訂單</a><br>
			<a href="deleteunfinishporder.jsp">6)刪除未完成訂單</a><br>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>