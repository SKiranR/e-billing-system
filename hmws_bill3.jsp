<%@ page import="java.sql.*" import="databaseconnection.databasecon,Mail.*"  %>

<%@ include file="hheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>


<%
String hmwsmail=(String)session.getAttribute("hmwsmail"); 
System.out.print("Hello User3: "+hmwsmail);
session.setAttribute("email",hmwsmail);

String date=(String)session.getAttribute("date"); 
session.setAttribute("date",date);


String  amt=request.getParameter("amt");
String  col=request.getParameter("col");
String can=(String)session.getAttribute("can");
//out.println(column);
%>



<%

String hmwsbill="Due Amount= "+amt+","+"     "+"Last Date= "+date;

try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="update hmws_bill_g set "+col+"='"+amt+"' where can_no='"+can+"' ";
System.out.println(sql);
st.executeUpdate(sql);
out.println("success");
}
catch(Exception e){
	out.println(e);
}



%>
<%@ include file="footer.jsp"%>