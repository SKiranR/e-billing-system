<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>

<%@ include file="hheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>


<%
String date=request.getParameter("date");
session.setAttribute("hmwsdate",date);
System.out.print("Hello HMWS: "+date);

String hmwsmail=(String)session.getAttribute("hmwsmail");
session.setAttribute("hmwsmail",hmwsmail);
System.out.print("Hello HMWS: "+hmwsmail);
//System.out.println(date);

String[] parts = date.split("-");
String part1 = parts[0]; // 004
String part2 = parts[1]; // 034556
String column="_"+part1+"_"+part2;

%>



<%
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="ALTER TABLE hmws_bill_g ADD "+column+" VARCHAR(20) ";
st.executeUpdate(sql);
Statement st2 = con.createStatement();
String sql2="ALTER TABLE hmws_bill_p ADD "+column+" VARCHAR(20) ";
st2.executeUpdate(sql2);

%>
<%

}
catch(Exception e){
%>

<%
}
%>
<form method="post" action="hmws_bill3.jsp">
	
<input type="hidden" name="col" value="<%=column%>">

<table cellpadding=10>
<tr><td><h3><%=date%><td><input type="number" name="amt" required placeholder="Enter Amount"><td><input type="submit" value="Submit">
</table>
</form>


<%@ include file="footer.jsp"%>