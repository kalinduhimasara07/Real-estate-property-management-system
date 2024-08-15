<%-- 
    Document   : signin
    Created on : Jul 25, 2024, 10:58:25 PM
    Author     : Nipuni
--%>

<%@page import="classes.DbConnector"%>
<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String email = request.getParameter("email");
    String password = request.getParameter("pw");
    
    User user = new User(email, password);
    if(user.authenticate(DbConnector.getConnection())){
        session.setAttribute("user_id", user.getUid());
        session.setAttribute("user_name", user.getName());
        response.sendRedirect("user-acc.jsp");
    }else{
        response.sendRedirect("login.jsp?x=0");
    }


%>
