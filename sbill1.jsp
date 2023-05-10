<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ include file="uheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">


<br><br>
<form method="post" action="sbill2.jsp">
	

<h3>Southern Power Distribution Company</h3>

<table cellspacing=10>
<tr>
	<td>Enter Your SPDC Unique No. *</td>
	<td><input type="text" name="spdc"></td>
	<td><input type="submit" value="Submit"></td>
</tr>
</table>
</table>


</body>
</form>



<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
      
<%@ include file="footer.jsp"%>