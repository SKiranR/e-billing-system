<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>

<%@ include file="gheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">





<br><br>
<h3>Members</h3>
<%

Connection con = databasecon.getconnection();
Statement st = con.createStatement();

String sql="select * from register where status='active' ";
ResultSet rs=st.executeQuery(sql);

%>
<Table cellspacing=10 width="100%" >
<tr><td><font color="orange">Id<td><font color="orange">Name<td><font color="orange">Address<td><font color="orange">City<td><font color="orange">State<td><font color="orange">Phone<td><font color="orange">PTI
<%
while(rs.next())
{	
	%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString(3)%>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%><td><%=rs.getString(4)%><td><%=rs.getString(5)%><td><%=rs.getString(6)%><td><%=rs.getString(8)%><td><a href="ghmc_bill1.jsp?id=<%=rs.getString(14)%>&email=<%=rs.getString(9)%>"><%=rs.getString(14)%></a>
	
	

<%
		
}
%>


</body>

<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
      
<%@ include file="footer.jsp"%>