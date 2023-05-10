<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>

<%@ include file="sheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>
<form method="post" action="spdc_bill2.jsp">

<%
String  spdc=request.getParameter("id");
String  spdcmail=request.getParameter("spdcmail");
session.setAttribute("spdc",spdc);
session.setAttribute("spdcmail",spdcmail);
System.out.println(spdc);
System.out.println(spdcmail);
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
Statement st2 = con.createStatement();
String sql="insert into spdc_bill_g(spdc_no) values('"+spdc+"') ";
String sql2="insert into spdc_bill_p(spdc_no) values('"+spdc+"') ";
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