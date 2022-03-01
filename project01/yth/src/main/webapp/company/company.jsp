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
			<a href="addcompany.jsp">1)新增公司資料</a><br>
			<a href="querycompany.jsp">2)查詢公司資料</a><br>
			<a href="updatecompany.jsp">3)修改公司資料</a><br>
			<a href="deletecompany.jsp">4)刪除公司資料</a><br>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>