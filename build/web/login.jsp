<%-- 
    Document   : login
    Created on : 31 Mar, 2018, 4:50:10 AM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Login page</title>
    </head>
    <body>
        
            <img src="./images/MIB.png"/>
            <h2>Admin Login</h2>
        <div>    
      <%
        String name = request.getParameter("user"); 
        String pass =request.getParameter("password");
        Login login = new Login(); 
        login.setUser_id(name);
        login.setPassword(pass);
       %>
        <p>User Id</p>
        <input type="editText" value="" />
        <p>Password</p>
        <input type="password" value=""/>
        <p></p>
        <a href="home.jsp"><button class="format">Login</button></a>
        </div>
    </body>
</html>

