<%@ page import="java.sql.*"%>
<%@ page import="javax.mail.MessagingException"%>
<%@ page import="Mail.mail"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,can,pti,spdc;
	int i=0;
%>
<%
try{
Class.forName("com.mysql.jdbc.Driver"); 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spatial","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");
city=request.getParameter("city");
state=request.getParameter("state");
 zip=request.getParameter("zip");
tele=request.getParameter("tele");
 email=request.getParameter("email");
  can=request.getParameter("can");
   spdc=request.getParameter("spdc");
pti=request.getParameter("pti");
pwd=request.getParameter("pwd");
System.out.println(pwd);
%>
<%
try{
Class.forName("com.mysql.jdbc.Driver"); 

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/spatial","root","root");
Statement st=con.createStatement();
un="user110"+i;

int q= st.executeUpdate("insert into register values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+city+"','"+state+"','"+zip+"','"+tele+"','"+email+"', '"+un+"', '"+pwd+"','"+can+"','"+spdc+"','"+pti+"','non')");

if(q>0)
{
	response.sendRedirect("register.jsp?id="+un+"");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("register.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
