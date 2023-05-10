<%@ page import="java.sql.*" import="databaseconnection.databasecon,Mail.*"  %>

<%@ include file="sheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>


<%

String spdcmail=(String)session.getAttribute("spdcmail"); 
System.out.print("Hello User3: "+spdcmail);
session.setAttribute("email",spdcmail);

String date=(String)session.getAttribute("date"); 
session.setAttribute("date",date);


String  amt=request.getParameter("amt");
String  col=request.getParameter("col");
String spdc=(String)session.getAttribute("spdc");
//out.println(column);
%>



<%

String spdcbill="Due Amount= "+amt+","+"     "+"Last Date= "+date;


try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="update spdc_bill_g set "+col+"='"+amt+"' where spdc_no='"+spdc+"' ";
System.out.println(sql);
st.executeUpdate(sql);
out.println("success");
}
catch(Exception e){
	out.println(e);
}

mail.mailsend("SPDC DUE Bill",spdcbill,spdcmail);

%>
<%@ include file="footer.jsp"%>