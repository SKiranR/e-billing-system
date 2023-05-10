<%@ page import="java.sql.*" import="databaseconnection.databasecon,Mail.*"  %>

<%@ include file="gheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>


<%
String email=(String)session.getAttribute("email"); 
System.out.print("Hello User3: "+email);
session.setAttribute("email",email);

String date=(String)session.getAttribute("date"); 

String  amt=request.getParameter("amt");
String  col=request.getParameter("col");
String pti=(String)session.getAttribute("pti");
//out.println(column);
%>



<%
String bill="Due Amount="+amt+","+"     "+"Last Date="+date;

try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="update ghmc_bill_g set "+col+"='"+amt+"' where pti_no='"+pti+"' ";
System.out.println(sql);
st.executeUpdate(sql);
out.println("success");
}
catch(Exception e){
	out.println(e);
}

mail.mailsend("GHMC DUE Bill",bill,email);

%>
<%@ include file="footer.jsp"%>



