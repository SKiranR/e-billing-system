<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ include file="uheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">


<br><br>

<h3>Hyderabad Metropolitan Water Supply</h3>
<h5>Generated Amount</h5>
<%
String can=(String)session.getAttribute("can");
String cn=request.getParameter("cn");
String amt=request.getParameter("amt");
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="update  hmws_bill_p set "+cn+"='"+amt+"' where can_no ='"+can+"'"; 
st.executeUpdate(sql);
response.sendRedirect("bill.jsp");
}
catch(Exception e){}
%>
<%@ include file="footer.jsp"%>