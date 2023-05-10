<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pass");
String name=null,u=null,test2=null;



try
{

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
	String sss1 = "select * from hmws where un='"+a+"' && pwd='"+b+"'";
	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

	%>

<%
		
		response.sendRedirect("hmws_home.jsp");
		}
		else					response.sendRedirect("hmws.jsp?message=fail");
}






catch(Exception e1)
{
out.println(e1.getMessage());
}

%>