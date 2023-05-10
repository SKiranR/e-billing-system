<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ include file="uheader.jsp"%>
<br><br>
<body bgcolor="#ffffff">


<br><br>

<h3>Hyderabad Metropolitan Water Supply</h3>
<h5>Generated Amount</h5>
<%
boolean a=false;
boolean b=false;
int bal=0,pay=0;
String can=request.getParameter("can");
session.setAttribute("can",can);
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="SELECT * FROM   hmws_bill_g where can_no ='"+can+"'"; 
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
		   <td>
			<%
			if(a==true)  { 
		   bal=bal+Integer.parseInt(value);
		   }
		   else{a=true;}%>
		   <%=value%>
		   <%
		}
}
}
catch(Exception e){}
%>

</table>







<h5><font size="" color="#7cb627">Pay Amount</h5>
<%
try{
Connection con = databasecon.getconnection();
Statement st = con.createStatement();
String sql="SELECT * FROM   hmws_bill_p where can_no ='"+can+"'"; 
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
		   <td><%if(value==null){ %>

		   
		   <a href="hmws_pay.jsp?cn=<%=columnName%>">Pay</a> <%}
		  
		   
		   else {
			if(b==true)
			   {
			pay=pay+Integer.parseInt(value);
			   }
				else{b=true;}
			   out.println(value);
		   }
		   
		   %>
		   <%
		}
//		   System.out.println();
%>

<%
		   	
}
}
catch(Exception e){System.out.println(e);}
%>

</table>




<h5>Due Amount: <%=bal-pay%></h5>
</body>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
      
<%@ include file="footer.jsp"%>
