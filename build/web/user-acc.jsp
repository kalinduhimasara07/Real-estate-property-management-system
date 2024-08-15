<%-- 
    Document   : user-acc
    Created on : Jul 25, 2024, 10:19:48 PM
    Author     : kalin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.NumberFormat"%>
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
            String user_name = "";
            int user_id =0 ;
            if (session.getAttribute("user_id") != null) {
                user_id = (Integer) session.getAttribute("user_id");
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
        <div class="container mt-4 p-3 bg-white">
            <p style="font-size: 22pt;">Welcome! <% out.println(user_name); %></p>
            <a href="new-add.jsp" class="btn btn-dark">Post New Add</a>




            <%
                if (request.getParameterMap().containsKey("s")) {


            %>
            <div class="container mt-4 p-3 bg-white">
                <p style="font-size: 22pt;" class="text-success text-center fw-bold">"Your advertisement has been successfully placed."</p>
                <p style="font-size: 22pt;" class="text-danger text-center fw-bold"> Please wait a moment for admin approval.</p>
                <center><a href="index.jsp" class="btn btn-success">Go to Home Page</a></center>
            </div>

            <%            }     %>
            
            
            <%
                if (request.getParameterMap().containsKey("x")) {


            %>
            <div class="container mt-4 p-3 bg-white">
                <p style="font-size: 22pt;" class="text-success text-center fw-bold">"Your advertisement has been successfully Changed."</p>
                <p style="font-size: 22pt;" class="text-danger text-center fw-bold"> Please wait a moment for admin approval.</p>
                <center><a href="index.jsp" class="btn btn-success">Go to Home Page</a></center>
            </div>

            <%            }     %>
            


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
                    String sql = "SELECT * FROM advertisement INNER JOIN images ON advertisement.aid = images.aid WHERE uid='"+user_id+"' ";
                    pstmt = conn.prepareStatement(sql);

                    // Execute the query
                    rs = pstmt.executeQuery();

                    // Iterate over the result set and display property details
                    while (rs.next()) {
                        String title = rs.getString("title"); // Get the property ID
                        String city = rs.getString("city");
                        String date_time = rs.getString("date_time");
                        String img1 = rs.getString("img1");
                        int status = rs.getInt("status");
                        int aid = rs.getInt("aid");
                        int bed = rs.getInt("bed");
                        int bath = rs.getInt("bath");
                        int price = rs.getInt("price");
                        // Get the number instance for the default locale
                        NumberFormat numberFormatter = NumberFormat.getNumberInstance();

                        // Format the price
                        String formattedPrice = numberFormatter.format(price);

                        // Add other relevant fields as needed
            %>



            <!-- advertisement -->
            <div class="mb-4 p-3 mt-4 add-div">
                <div class="row">

                    <div class="col-sm-4">
                        <!-- image -->
                        <img src="images/upload/<%out.print(img1);%>"  alt="pic" class="img-fluid add-img"/>
                        
                    </div>
                    <!-- details -->
                    <div class="col-sm-8">
                        <h1 class="add-text-1"><%out.print(title);%></h1>
                        <p class="add-text-5">Posted on <%out.print(date_time);%></p>
                        <p class="add-text-2">Bedrooms: <%out.print(bed);%> | Bathroom: <%out.print(bath);%></p>
                        <p class="add-text-3"><%out.print(city);%>, Sri Lanka</p>
                        <p class="add-text-4 f-cl1">Rs <%out.print(formattedPrice);%>/-</p>
                        <div class="">
                            <a href="advertisement.jsp?aid=<%out.print(aid);%>" class="btn btn-sm btn-warning text-white ">View more</a>
                            <a href="edit-add.jsp?aid=<%out.print(aid);%>" class="btn btn-sm btn-warning text-white ">Edit</a>
                        </div>
                        <% if(status==1){ %>
                        <div class="text-end">
                            <button class="btn btn-sm btn-success text-white" style=" pointer-events: none; cursor: default;">ADMIN Approved</button>
                        </div>
                        <% } %>
                        <% if(status==0){ %>
                        <div class="text-end">
                            <button class="btn btn-sm btn-danger text-white" style=" pointer-events: none; cursor: default;">ADMIN Not Approved</button>
                        </div>
                        <% } %>
                    </div>

                </div>

            </div><!-- advertisement End-->


            <%
                }//end while loop


            %>  

            <%                        } //end try 
                catch (Exception e) {
                    e.printStackTrace();
                }
            %>






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
