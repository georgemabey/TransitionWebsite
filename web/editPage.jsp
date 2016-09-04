<%-- 
    Document   : editPage
    Created on : 18-Dec-2014, 22:50:33
    Author     : George
--%>

<%@page import="TransitionWebsite1.Transition"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% Transition t = (Transition) session.getAttribute("transition");
        
        
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Transition <%=t.getTransitionID()%></title>
    </head>
    <body>
        <h1>Edit</h1>
         <form name ="transitionEdit" action="transitionEdit" method="post"> 
            <table>
                
                <tr><td>BPM Difference: <input TYPE ="number" name ="bpm" value ="<%=t.getBPMDiff()%>"/></td><tr/>
                <tr><td>Key Difference: <input TYPE ="number" name ="key" value ="<%=t.getKeyDiff()%>"/></td><tr/>
                <tr><td>Embed URL: <input TYPE ="text" name ="url" value ="<%=t.getEmbedLink()%>"/></td><tr/>

                <input TYPE ="hidden" name ="id" value ="<%=t.getTransitionID()%>"/>

 
                <input TYPE="submit" value="Edit Details" /> 
            </table> 
        </form> 
    </body>
</html>
