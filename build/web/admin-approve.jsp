<%-- 
    Document   : admin-approve
    Created on : Jul 25, 2024, 11:30:55 PM
    Author     : kalin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Idam.lk</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
         <%
                    if(request.getParameter("k")==null){
                        response.sendRedirect("admin.jsp?x=0");
                    }
                %>
        
        
        <!--nav bar updated-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-cl1">
            <div class="container">
                <a class="navbar-brand" href="index.jsp"><img src="images/nav-icon.png" height="50px" alt="nav-icon"/>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 mx-4">

                        <li class="nav-item mx-2"><button class="btn btn-primary" style=" pointer-events: none; cursor: default;"><a href="" style="color:white; ">POST YOUR AD</a></button></li>
                            
                        <li class="nav-item">
                            <li class="nav-item"><button class="btn btn-outline-warning" style=" pointer-events: none; cursor: default;"><a href="" style="color:white; ">LOGIN</a></button></li>
                        </li>
                    </ul>
                    <ul class="navbar-nav me-5">
                        <div class="d-flex">
                            <li class="nav-item me-2">
                                <a class="nav-link active text-warning" aria-current="page" href="about-us.jsp">ABOUT </a>
                            </li>

                            <li class="nav-item me-2">
                                <a class="nav-link active text-warning" aria-current="page" href="contact-us.jsp">CONTACT </a>
                            </li>
                        </div>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" disabled="disabled">
                        <button class="btn btn-warning" type="submit" style=" pointer-events: none; cursor: default; ">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--nav bar close-->

        <!-- main area -->
        <div class="container bg-white mt-4 p-3 ">
            <h1>Admin</h1>
            <table class="table">
                <tr>
                    <th>Title</th>
                    <th>City</th>
                    <th>Date and time</th>
                    <th>Action</th>
                </tr>
                
                <%
                    // Database connection settings
                    String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
                    String dbUser = "root";
                    String dbPassword = "";

                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;

                    try {
                        // Connect to the database
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                        // Prepare the SQL query to retrieve all property details
                        String sql = "SELECT * FROM advertisement ORDER BY aid DESC";
                        pstmt = conn.prepareStatement(sql);

                        // Execute the query
                        rs = pstmt.executeQuery();

                        // Iterate over the result set and display property details
                        while (rs.next()) {
                            String title = rs.getString("title"); // Get the property ID
                            String city = rs.getString("city");
                            String date_time = rs.getString("date_time");
                            int status = rs.getInt("status");
                            int aid = rs.getInt("aid");
                            
                            // Add other relevant fields as needed
                            

                %>
                
                
                
                
                <tr>
                    <td><% out.print(title); %></td>
                    <td><% out.print(city); %></td>
                    <td><% out.print(date_time); %></td>
                    <td>
                        
                        <% if(status==0) {%>
                        <a href="admin-approve-sql.jsp?status=1&aid=<% out.print(aid); %>" class="btn btn-sm btn-info">Approve</a>
                        <% }%>
                        
                        <% if(status==1) {%>
                        <a href="admin-approve-sql.jsp?status=0&aid=<% out.print(aid); %>" class="btn btn-sm btn-dark">Disapprove</a>
                        <% }%>
                    </td>
                </tr>
                <%
                } // End of while loop
                    } catch (Exception e) {
                        e.printStackTrace();
                    } %>
            </table>


        </div>
        <!-- main area End-->




       <!--footer updated-->
        <div class="container-fluid bg-dark text-white py-2 mt-5 mb-0 footer">

            <table class="w-100 text-center">
                <tr>
                    <td>  
                        <img src="images/nav-icon.png" alt="" style="height: 50px;"><br>
                    </td>
                    <td class="h5">
                        <a href="contact-us.jsp" class=" active text-warning">CONTACT US</a> |
                        <a href="about-us.jsp" class=" active text-warning">ABOUT US</a> |
                        <a href="privacy-policy.jsp" class=" active text-warning">PRIVACY POLICY</a>
                    </td>
                    <td class="fafaicon">
                        FOLLOW US <br>
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-twitter"></a>
                        <a href="#" class="fa fa-instagram"></a>
                    </td>
                </tr>
            </table>
            <hr>

            <p class="text-center m-3">© 2024. All rights reserved. KH Saltside Technologies</p>

        </div>
        <!--footer close-->
    </body>
</html>
