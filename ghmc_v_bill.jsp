<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ include file="gheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">


<br><br>

<h1>Greater Hyderabad Municipal Corporation</h1>
<h5>Generated Amount</h5>
<%
//String can=request.getParameter("can");
//session.setAttribute("can",can);
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="SELECT * FROM   ghmc_bill_g "; 
ResultSet rs=st.executeQuery(sql);
ResultSetMetaData metadata = rs.getMetaData();
int columnCount = metadata.getColumnCount();
		System.out.println(columnCount);

	    ArrayList<String> columns = new ArrayList<String>();
	    for (int i = 1; i <=columnCount; i++) {
		String columnName = metadata.getColumnName(i);
		columns.add(columnName);
		System.out.println(columns.size());
	    }



%>
<table cellpadding=10 border=5> 	<tr>
<%
	  		for (String columnName : columns) {
	%>

	<td><b><%=columnName%></b>
	<%
			
			}


	

while(rs.next())
{
	%>
<tr>
<%
for (String columnName : columns) {
		    String value = rs.getString(columnName);
		   %>
		   <td><%=value%>
		   <%
		}
}
}
catch(Exception e){}
%>

</table>







<h5>Paid Amount</h5>
<%
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="SELECT * FROM   ghmc_bill_p "; 
ResultSet rs=st.executeQuery(sql);
ResultSetMetaData metadata = rs.getMetaData();
int columnCount = metadata.getColumnCount();
		System.out.println(columnCount);

	    ArrayList<String> columns = new ArrayList<String>();
	    for (int i = 1; i <=columnCount; i++) {
		String columnName = metadata.getColumnName(i);
		columns.add(columnName);
		System.out.println(columns.size());
	    }



%>
<table cellpadding=10 border=5> 	<tr>
<%
	  		for (String columnName : columns) {
	%>

	<td><b><%=columnName%></b>
	<%
			
			}


	

while(rs.next())
{
	%>
<tr>
<%
for (String columnName : columns) {
		    String value = rs.getString(columnName);
		   %>
		   <td><%
			   out.println(value);
		   
		   %>
		   <%
		}
}
}
catch(Exception e){}
%>

</table>

</body>




<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
      
<%@ include file="footer.jsp"%>