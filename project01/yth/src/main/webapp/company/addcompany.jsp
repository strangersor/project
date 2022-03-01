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
		<form action="addCompanyController" method="post">
		<h3>新增公司資料</h3>
		<table width=400 align="center" >
		<tr>
		<td>公司名稱:<td><input type="text" name="name">
		<tr>
		<td>暱稱:<td><input type="text" name="nickname">
		<tr>
		<td>電話:<td><input type="text" name="phone">
		
		<tr>
		<td>統編:<td><input type="text" name="taxid">
		<tr>
		<td>聯絡人:<td><input type="text" name="contactperson">
		<tr>
		<td colspan="2">地址:
		<tr>
		<td colspan="2"><input type="text"  style="width:400px; "name="address">
		<tr>
		<td colspan="2" align="center"><input type="submit" value="確定">
		</table>
		
		
		
		
		
		
		
		
		</form>
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>