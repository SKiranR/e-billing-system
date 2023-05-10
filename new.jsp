<%@ include file="aheader.jsp"%>
<%@ page import="java.sql.*" import="databaseconnection.databasecon"  %>




<%

Connection con = databasecon.getconnection();
Statement st = con.createStatement();

String sql="select * from register where status='non' ";
ResultSet rs=st.executeQuery(sql);

%>
<Table cellspacing=10 width="100%" border>
<tr><td><font color="#18bbeb">Id<td><font color="#18bbeb">Name<td><font color="#18bbeb">Address<td><font color="#18bbeb">City<td><font color="#18bbeb">State<td><font color="#18bbeb">Phone<td><font color="#18bbeb">CAN No<td><font color="#18bbeb">SPDC No<td><font color="#18bbeb">PTI No<td><font color="#18bbeb">Action

<%
while(rs.next())
{	
	%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString(3)%>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%><td><%=rs.getString(4)%><td><%=rs.getString(5)%><td><%=rs.getString(6)%><td><%=rs.getString(8)%><td><%=rs.getString(12)%><td><%=rs.getString(13)%><td><%=rs.getString(14)%><td><a href="active.jsp?id=<%=rs.getString(1)%>">Active</a>/<a href="deactive.jsp?id=<%=rs.getString(1)%>">De Active</a>
	
	<%


		
}
%>






	

<%@ include file="footer.jsp"%>