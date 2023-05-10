<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>

<%@ include file="hheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>
<form method="post" action="hmws_bill2.jsp">

<%
String  can=request.getParameter("id");
String  hmwsmail=request.getParameter("hmwsmail");
session.setAttribute("can",can);
session.setAttribute("hmwsmail",hmwsmail);
System.out.println(can);
System.out.println(hmwsmail);
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
Statement st2 = con.createStatement();
String sql="insert into hmws_bill_g(can_no) values('"+can+"') ";
String sql2="insert into hmws_bill_p(can_no) values('"+can+"') ";
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