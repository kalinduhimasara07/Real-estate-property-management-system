<%-- 
    Document   : signup
    Created on : Jul 25, 2024, 9:38:24 PM
    Author     : Nipuni
--%>

<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name = request.getParameter("name");
    String nic = request.getParameter("nic");
    String tel = request.getParameter("tel");
    String email = request.getParameter("email");
    String password = request.getParameter("pw");
    
    User user = new User(name, nic, tel, email, password);
    if(user.register(DbConnector.getConnection())){
        response.sendRedirect("login.jsp?s=1");
    }else{
        response.sendRedirect("register.jsp?s=0");
    }


%>
