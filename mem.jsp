<%@ include file="aheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>


<br><br>
<h3>Activate Citzens</h3>
<%

Connection con = databasecon.getconnection();
Statement st = con.createStatement();

String sql="select * from register where status='active' ";
ResultSet rs=st.executeQuery(sql);

%>
<Table cellspacing=10 width="100%" >
<tr><td><font color="orange">Id<td><font color="orange">Name<td><font color="orange">Address<td><font color="orange">City<td><font color="orange">State<td><font color="orange">Phone<td><font color="orange">CAN No<td><font color="orange">SPDC No<td><font color="orange">PTI No

<%
while(rs.next())
{	
	%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString(3)%>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%><td><%=rs.getString(4)%><td><%=rs.getString(5)%><td><%=rs.getString(6)%><td><%=rs.getString(8)%><td><%=rs.getString(12)%><td><%=rs.getString(13)%><td><%=rs.getString(14)%>
	
	<%


		
}
%>






	

<%@ include file="footer.jsp"%>