<%-- 
    Document   : advertisement
    Created on : Jul 25, 2024, 2:46:50 PM
    Author     : kalin
--%>

<%@page import="java.text.NumberFormat"%>
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
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-warning" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--nav bar close-->



        <%
            // Database connection settings
            String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
            String dbUser = "root";
            String dbPassword = "";

            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            int Aid = Integer.parseInt(request.getParameter("aid"));

            try {
                // Connect to the database
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Prepare the SQL query to retrieve all property details
                String sql = "SELECT * FROM advertisement INNER JOIN images ON advertisement.aid = images.aid WHERE advertisement.aid='"+Aid+"'  ";
                pstmt = conn.prepareStatement(sql);

                // Execute the query
                rs = pstmt.executeQuery();

                // Iterate over the result set and display property details
                while (rs.next()) {
                    String title = rs.getString("title"); // Get the property ID
                    String city = rs.getString("city");
                    String date_time = rs.getString("date_time");
                    String img1 = rs.getString("img1");
                    String img2 = rs.getString("img2");
                    String img3 = rs.getString("img3");
                    String img4 = rs.getString("img4");
                    String img5 = rs.getString("img5");
                    String description = rs.getString("description");
                    String tel = rs.getString("tel");
                    int status = rs.getInt("status");
                    int aid = rs.getInt("aid");
                    int bed = rs.getInt("bed");
                    int bath = rs.getInt("bath");
                    int size = rs.getInt("size");
                    int price = rs.getInt("price");
                    // Get the number instance for the default locale
                    NumberFormat numberFormatter = NumberFormat.getNumberInstance();

                    // Format the price
                    String formattedPrice = numberFormatter.format(price);

                    // Add other relevant fields as needed
        %>



        <!-- main area -->
        <div class="container mt-4 bg-white rounded advert">
            <a href="index.jsp" class="btn btn-dark m-2">Go Back</a>
            <div class="row">
                <!-- left -->
                <div class="col-sm-8 col-lg-9 py-3">
                    <h1><%out.print(title);%></h1>
                    <p>Posted on <%out.print(date_time);%>, <%out.print(city);%>, Sri Lanka</p>

                    <!-- image carousel -->
                    <div>
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="images/upload/<%out.print(img1);%>" class="d-block w-100 img1" alt="..."/>
                                </div>

                                <div class="carousel-item">
                                    <img src="images/upload/<%out.print(img2);%>" class="d-block w-100 img1" alt="..."/>
                                </div>


                                <div class="carousel-item">
                                    <img src="images/upload/<%out.print(img3);%>" class="d-block w-100 img1" alt="..."/>
                                </div>


                                <div class="carousel-item">
                                    <img src="images/upload/<%out.print(img4);%>" class="d-block w-100 img1" alt="..."/>
                                </div>


                                <div class="carousel-item">
                                    <img src="images/upload/<%out.print(img5);%>" class="d-block w-100 img1" alt="..."/>
                                </div>

                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>

                    </div>  <!-- image carousel end -->

                    <p class="price f-cl1">Rs <%out.print(formattedPrice);%>/-</p>
                    <p>
                        Area : <b><%out.print(city);%>, Sri Lanka</b><br>
                        Bedroom : <%out.print(bed);%> | Bathroom <%out.print(bath);%> <br>
                        Land size : <%out.print(size);%> perches <br>
                    </p>
                    <p>
                        <b>Description</b><br>
                        <span class="desc">
                            <%out.print(description);%>
                        </span>
                    </p>
                    <!-- left End-->    
                </div>
                <!-- Right -->
                <div class="col-sm-4 col-lg-3 py-3 pt-5 ">
                    <div class="sticky-top"> <!-- stable for contact and alart division -->
                        <div class="border p-3 text-center " >
                            <h2>Contact Customer</h2>
                            <p class="tel"><i class="fa fa-phone"></i><%out.print(tel);%></p>
                        </div>

                        <div class=" p-3 text-center rounded m-4 mt-5 alart" >
                            <h3>Stay Alert: Avoid Online Scams</h3>
                            <p class="alart-p">Never share card details or OTPs, and always verify items in person before payment. ikman does not offer a delivery service. Stay vigilant!</p>
                        </div>
                        <!-- Right End-->    
                    </div>
                </div>

            </div>

        </div>
        <!-- main area End-->

        <%
                }
            } catch (Exception e) {
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
