<%-- 
    Document   : edit-add
    Created on : Aug 7, 2024, 11:19:45 AM
    Author     : kalin
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.*"%>
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
            String user_name = "";
            if (session.getAttribute("user_id") != null) {
                int user_id = (Integer) session.getAttribute("user_id");
                user_name = (String) session.getAttribute("user_name");

            } else {
                response.sendRedirect("login.jsp?x=1");
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

                        <li class="nav-item mx-2"><button class="btn btn-primary"><a href="user-acc.jsp" style="color:white;">POST YOUR AD</a></button></li>
                            <% if (session.getAttribute("user_id") == null) { %>
                        <li class="nav-item">
                        <li class="nav-item"><button class="btn btn-outline-warning"><a href="login.jsp" style="color:white;">LOGIN</a></button></li>
                        </li>
                        <% } %>
                        <% if (session.getAttribute("user_id") != null) { %>
                        <li class="nav-item">
                        <li class="nav-item"><button class="btn btn-outline-warning"><a href="logout.jsp" style="color:white;">LOG OUT</a></button></li>
                        </li>
                        <% } %>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" disabled="disabled">
                        <button class="btn btn-warning" type="submit" style=" pointer-events: none; cursor: default; ">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--nav bar close-->


        <%
            String aid = request.getParameter("aid");
            
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
                String sql = "SELECT * FROM advertisement WHERE aid='"+aid+"' ";
                pstmt = conn.prepareStatement(sql);

                // Execute the query
                rs = pstmt.executeQuery();

                // Iterate over the result set and display property details
                while (rs.next()) {
                    String title = rs.getString("title"); // Get the property ID
                    String city = rs.getString("city");
                    int size = rs.getInt("size");
                    int bed = rs.getInt("bed");
                    int bath = rs.getInt("bath");
                    int price = rs.getInt("price");
                    String tel = rs.getString("tel");
                    String description = rs.getString("description");
        %>






        <!-- main area -->
        <div class="container mt-4 p-3 bg-white">

            <a href="user-acc.jsp" class="btn btn-dark">Go Back</a>

            <h1 class="mt-4">Edit Add</h1>
            <form action="update-add.jsp?aid=<%out.print(aid);%>" method="post" >
                <div class="row">
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit Title</label>
                        <input type="text" name="title"  class="form-control" required value="<%out.print(title);%>">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit City</label>
                        <input type="text" name="city"  class="form-control" required value="<%out.print(city);%>">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit Size</label>
                        <input type="text" name="size"  class="form-control" required value="<%out.print(size);%>">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit No of Bedrooms</label>
                        <input type="text" name="bed"  class="form-control" required value="<%out.print(bed);%>">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit No of Bathrooms</label>
                        <input type="text" name="bath"  class="form-control" required value="<%out.print(bath);%>">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit Price</label>
                        <input type="text" name="price"  class="form-control" required value="<%out.print(price);%>">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <label for="">Edit Telephone</label>
                        <input type="text" name="tel"  class="form-control" required value="<%out.print(tel);%>">
                    </div>
                    <div class="col-sm-12 mb-3">
                        <label for="">Edit Discreption</label>
                        <textarea name="description" class="form-control" style="height:200px" placeholder=""><%out.print(description);%></textarea>
                    </div>
                    <!--                    <div class="col-sm-4 mb-3">
                                            <label for="">Image 1</label>
                                            <input type="file" name="img1"  class="form-control" >
                                        </div>
                                        <div class="col-sm-4 mb-3">
                                            <label for="">Image 2</label>
                                            <input type="file" name="img2"  class="form-control" >
                                        </div>
                                        <div class="col-sm-4 mb-3">
                                            <label for="">Image 3</label>
                                            <input type="file" name="img3"  class="form-control" >
                                        </div>
                                        <div class="col-sm-4 mb-3">
                                            <label for="">Image 4</label>
                                            <input type="file" name="img4"  class="form-control" >
                                        </div>
                                        <div class="col-sm-4 mb-3">
                                            <label for="">Image 5</label>
                                            <input type="file" name="img5"  class="form-control" >
                                        </div>-->


                    <div class="col-sm-12 mb-3">
                        <input type="submit" class="btn btn-primary w-100">
                    </div>

                </div>
            </form>

        </div>
        <!-- main area End-->


        <%
            }//end while loop


        %>  

        <%                        } //end try 
            catch (Exception e) {
                e.printStackTrace();
            }
        %>




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
