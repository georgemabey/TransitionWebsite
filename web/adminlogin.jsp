<%-- 
    Document   : adminlogin
    Created on : 18-Dec-2014, 21:00:19
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    
    <%
    	String incorrectLogin = "";
        

	//Get error messages if the servlet passed back any
            if (request.getAttribute("incorrectLogin") != null)
            {
                incorrectLogin = (String) request.getAttribute("incorrectLogin");
            }
            %>
    <body>
         <form action="loginController" method="post"> 
            
                <p>Password: <input type="password" name="password" />
                <input type="submit" value="Login" /></p> 
                <p><%=incorrectLogin%></p>
                
            
        </form> 
    </body>
</html>
