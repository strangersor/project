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
			<h2>公司資料加入成功!!</h2>
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
		<h4>若有錯誤，請點選下方連結進行修改</h4>	
		<a href="company.jsp">新增修改公司</a>
		<h4>回訂單系統</h4>
		<a href="../porder/porder.jsp">新增修改訂單</a>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>