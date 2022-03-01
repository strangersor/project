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
		<td align=center><h3>請填入欲修改資料,不用修改的部分可以留白</h3><br>
			
		<form action="updateCompanyController2" method="post">
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
			<td height=400 align=center>
			<h2>原始公司資料如下</h2>
			<table width=500 align="center">
		<tr>
		<td>公司名稱:<td><%=c.getName() %>
		<tr>
		<td>暱稱:<td><%=c.getNickname() %>
		<tr>
		<td>電話:<td><%=c.getPhone() %>
		
		<tr>
		<td>統編:<td><%=c.getTaxid() %>
		<tr>
		<td>聯絡人:<td><%=c.getContactperson() %>
		<tr>
		<td>地址:<td>
		<tr><td colspan="2"><%=c.getAddress() %>
		</table>
		
		<a href="updatecompany.jsp">回修改頁</a>	
		<a href="company.jsp">新增修改公司</a>
		<h4>回訂單系統</h4>
		<a href="../porder/porder.jsp">新增修改訂單</a>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>