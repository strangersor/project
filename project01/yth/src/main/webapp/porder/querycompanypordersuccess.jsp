<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"
    import="Factory.Factory"
    import="Dao.Connection"
    import="java.util.List"
    import="Model.Porder"
    import="Model.Company"
    %>
    
 <%
 Company c=(Company)session.getAttribute("c");
 Factory f=Connection.a1.getBean("f",Factory.class);
 List<Object> l=null;	
	 l=f.getPd().queryNickName(c.getNickname());
	 
	 
	
	 Porder[] pa=l.toArray(new Porder[l.size()]);	 
	
	 
	 
 
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
		<form action="queryCompanyPorderController2" method="post">
		輸入id查看訂單:<input type="text" name="id">
		
		<input type="submit" value="確定">
		</form>	
		<tr>
			<td height=400 align=center>
		<table align=center border=1>
		
		
		<tr>
			<td>id<td>訂單序號<td>公司暱稱<td>出貨日期<td>狀態
		<%
		if(pa.length==0){
			out.println("<tr>"+"<td>"+"<td>無訂單資料!!"+"<td>"+"<td>"+"<td>");
			
		}else{		
	     for(int i=0;i<pa.length;i++){
	   out.println("<tr>"+"<td>"+pa[i].getId()+"<td>"+pa[i].getPordern()
	    	 +"<td>"+pa[i].getNickname()+"<td>"+pa[i].getShipd()+"<td>"+pa[i].show());
	    	 
	    	 
	    	 
	     }
			
			
		}	
					%>	
					</table>
			
		<tr>
			<td height=50 align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>