
<%@ include file="header.jsp"%>

 <form name="s" action="login.jsp" method="get" onsubmit="return valid()">


 
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->


<h2><center>Login Here</h2>
               <table align="right" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#000066><strong>User 
                  ID</strong></font></td>
                <td><input type="text" name="uid"></td> 
              </tr>
              <tr> 
                <td><font size="+1"color=#000066><strong>Password</strong></font></td>
                <td><input type="password" name="pass" ></td>
              </tr>
              <tr> 
               
                <td><input type="submit" name="s" value="  LOGIN  " class="b1" > 
                 
                  <td><input type="reset" name="r" value="  CLEAR  " class="b1"></td>
              </tr>
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<a href=index.jsp><img src=images/mess_error.gif ></a>&nbsp;&nbsp;<font color='red'><blink>Your username and password is incorrect !</blink></font>");
                                                       }
                                               %>
                  </b></font></td>
              </tr>

        <tr><td>  
<a href="register.jsp"><img src="images/icon_create_account.png" width="163" height="53" border="0" alt=""></a>

 </table> 
  </form>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
      
<%@ include file="footer.jsp"%>