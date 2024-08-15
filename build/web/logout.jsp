<%-- 
    Document   : logout
    Created on : Jul 26, 2024, 10:40:01 AM
    Author     : kalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
