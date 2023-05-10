<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>

<%@ include file="gheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>
<form method="post" action="ghmc_bill2.jsp">

<%
String  pti=request.getParameter("id");
session.setAttribute("pti",pti);
String  email=request.getParameter("email");
System.out.print("Hello User1: "+email);
session.setAttribute("email",email);
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
Statement st2 = con.createStatement();
String sql="insert into ghmc_bill_g(pti_no) values('"+pti+"') ";
String sql2="insert into ghmc_bill_p(pti_no) values('"+pti+"') ";
st.executeUpdate(sql);
st2.executeUpdate(sql2);
}
catch(Exception e){}
%>

<h4>Generate Bill</h4>
<Table cellspacing=10 width="100%" >

<tr><td> Bill (month and year): <input type="month" name="date"> <td><input type="submit" value="Generate" required>

	
</form>




<%@ include file="footer.jsp"%>