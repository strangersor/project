<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"
    import="Factory.Factory"
    import="Model.Company"
    import="Dao.Connection"
    import="java.util.List"
    
    %>
    
 <%
 Factory f=Connection.a1.getBean("f",Factory.class);
 List<Object> l=null;	
 String N=request.getParameter("name");
 if(N==""||N==null){
	 l=f.getCd().queryAll();
	 
	 
	 
 }else {
	 
	 l=f.getCd().queryName(N);
	 
	 
 }
 Company[] ca=l.toArray(new Company[l.size()]);
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
		<td colspan="2" align=center>
		<form action="updatecompany.jsp" method="post">
		
		查詢公司名稱:<input type="text" name="name">
		<input type="submit" value="查詢">
		
		</form>
		<tr>
		<td colspan="2" align=center>
		<form action="updateCompanyController" method="post">
		輸入欲修改公司的id:<input type="text" name="id">
		
		<input type="submit" value="確定">
		</form>	
		<tr>
			<td height=400 align=center>
		<table align=center border=2>
		
		
		<tr>
			<td>id<td>公司名稱<td>地址<td>電話
		<%
				
	     for(int i=0;i<ca.length;i++){
	    	 
	    	 out.println("<tr>"+"<td>"+ca[i].getId()+"<td>"+ca[i].getName()
	    	 +"<td>"+ca[i].getAddress()+"<td>"+ca[i].getPhone());
	    	 
	    	 
	    	 
	     }
			
			
					
					%>	
					<tr>
		<td colspan="4" align="center"><a href="company.jsp">回上頁</a>
		<h4>回訂單系統</h4>
		<a href="../order/order.jsp">新增修改訂單</a>
					</table>
		
		
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>