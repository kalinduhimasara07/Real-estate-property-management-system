<%-- 
    Document   : admin-signin
    Created on : Jul 25, 2024, 11:30:17 PM
    Author     : kalin
--%>

<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email = request.getParameter("email");
    String password = request.getParameter("pw");
    
    User admin = new User(email, password);
    if(admin.adminAuthenticate(DbConnector.getConnection())){
        response.sendRedirect("admin-approve.jsp?k=123");
    }else{
        response.sendRedirect("admin.jsp?x=0");
    }


%>
