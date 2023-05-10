<%@ include file="aheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>


	
<center>

 <% String f=request.getParameter("id");

%>


<%
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql1=" update register set status='active' ";
st.executeUpdate(sql1);
	response.sendRedirect("new.jsp");

%>
