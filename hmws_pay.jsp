<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ include file="uheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">

<form method="post" action="hmws_pay2.jsp">
	

<br><br>
<%
String cn=request.getParameter("cn");
%>
<h3>Hyderabad Metropolitan Water Supply</h3>
<h5>Paying Amount for <%=cn%></h5>
<table>
<tr><td>Bank<td><input type="text" name="" required>

<tr><td>Card Holder Name<td><input type="text" name="" required>
<tr><td>Card Number<td><input type="number" name="" required>
<tr><td>CVS Number<td><input type="number" name="" required>
<tr><td>Transaction Password<td><input type="text" name="" required>
<tr><td>Amount<td><input type="number" name="amt" required>
<input type="hidden" name="cn" value="<%=cn%>">
<tr><td><input type="submit" Value="Submit" ><td> <input type="reset">
</table>

</body>

</form>


<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
      
<%@ include file="footer.jsp"%>