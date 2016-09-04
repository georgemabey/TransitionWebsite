<%-- 
    Document   : addPage
    Created on : 18-Dec-2014, 22:50:51
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Transition</title>
    </head>
    <body>
        <h1>Add Transition</h1>
        
        <form name="addTransition" action="addTransition" method="post"> 
           

            <table>
                <tr><td>Transition ID: <input TYPE ="number" name ="id"/><td/><tr/>
                <tr><td>BPM Difference: <input TYPE ="number" name ="bpm"/><td/><tr/>
                <tr><td>Key Difference: <input TYPE ="number" name ="key"/><td/><tr/>
                <tr><td>Embed URL: <input TYPE ="text" name ="url"/> <td/><tr/>
               <tr><td> <input TYPE="submit" value="Add Transition" />  <td/><tr/>
            </table> 
        </form> 
    </body>
</html>
