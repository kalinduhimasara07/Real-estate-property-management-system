<%-- 
    Document   : index
    Created on : Jul 25, 2024, 12:46:58 PM
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
                    <form class="d-flex" action="">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search" value="<% if(request.getParameterMap().containsKey("search")){out.print(request.getParameter("search"));} %>">
                        <button class="btn btn-warning" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--nav bar close-->



        <!-- main area -->
        <div class="container mt-4 bg-white rounded">

            <div class="row">
                <!-- filters -->
                <div class="col-sm-4 col-lg-3 py-3">
                    <p class="text-1"><i class="fa fa-search">&nbsp;</i>Filter Your Results</p>
                    <hr>
                    <form action="">
                        <div class="border-bottom pb-3">
                            <label class="text-label">Sort results by</label>
                            <select name="sort" class="form-select form-select-sm">
                                <option value="1" <% if(request.getParameterMap().containsKey("sort")){if(Integer.parseInt(request.getParameter("sort"))==1){out.print("selected");}} %> >Date : Newest on top</option>
                                <option value="2" <% if(request.getParameterMap().containsKey("sort")){if(Integer.parseInt(request.getParameter("sort"))==2){out.print("selected");}} %> >Date : Oldest on top</option>
                                <option value="3" <% if(request.getParameterMap().containsKey("sort")){if(Integer.parseInt(request.getParameter("sort"))==3){out.print("selected");}} %> >Price : Highest on top</option>
                                <option value="4" <% if(request.getParameterMap().containsKey("sort")){if(Integer.parseInt(request.getParameter("sort"))==4){out.print("selected");}} %> >Date : Lowest on top</option>
                            </select>
                        </div>

                        <div class="border-bottom py-3">
                            <label class="text-label">City</label>
                            <input type="text" name="city" class="form-control form-control-sm" placeholder="Enter City" value="<% if(request.getParameterMap().containsKey("city")){out.print(request.getParameter("city"));} %>">
                        </div>

                        <div class="border-bottom py-3">
                            <label class="text-label">Land Size</label>
                            <input type="number" name="min_size" class="form-control form-control-sm" placeholder="Enter minimum size" value="<% if(request.getParameterMap().containsKey("min_size")){out.print(request.getParameter("min_size"));} %>">
                            <input type="number" name="max_size" class="form-control form-control-sm" placeholder="Enter maximum size" value="<% if(request.getParameterMap().containsKey("max_size")){out.print(request.getParameter("max_size"));} %>">
                        </div>

                        <div class="border-bottom py-3">
                            <input type="submit" value="Search" class="btn btn-warning w-100 btn-sm">
                        </div>
                    </form>
                    <!-- filters End-->
                </div>
                <!-- Adds -->
                <div class="col-sm-8 col-lg-9 py-3">
                    <p class="text-1"><i class="fa fa-tags"></i>&nbsp;Properties for Sale in Sri Lanka</p>
                    <hr>
                    
                    
                    <!--Filtering-->
                    <%
                        //sorting
                        String sort="";
                        if (request.getParameterMap().containsKey("sort")) {
                                if(Integer.parseInt(request.getParameter("sort"))==1){
                                    sort = " ORDER BY advertisement.aid DESC";
                                }else if(Integer.parseInt(request.getParameter("sort"))==2){
                                    sort = " ORDER BY advertisement.aid ASC";
                                }else if(Integer.parseInt(request.getParameter("sort"))==3){
                                    sort = " ORDER BY price DESC";
                                }else if(Integer.parseInt(request.getParameter("sort"))==4){
                                    sort = " ORDER BY price ASC";
                                }
                        } else {
                            sort = " ORDER BY advertisement.aid DESC";
                        }
                        
                            //city filter
                           String city_filter="";
                        if (request.getParameterMap().containsKey("city") && request.getParameter("city")!="") {
                            city_filter = " AND city= '"+request.getParameter("city")+"' ";
                        }else{
                            city_filter="";
                        }
                        
                            //min_size filter
                           String min_size="";
                        if (request.getParameterMap().containsKey("min_size") && request.getParameter("min_size")!="") {
                            min_size = " AND size>= '"+request.getParameter("min_size")+"' ";
                        }else{
                            min_size="";
                        }
                        
                        //max_size filter
                           String max_size="";
                        if (request.getParameterMap().containsKey("max_size") && request.getParameter("max_size")!="") {
                            max_size = " AND size<= '"+request.getParameter("max_size")+"' ";
                        }else{
                            max_size="";
                        }
                        
                        //search 
                        String search="";
                        if (request.getParameterMap().containsKey("search") && request.getParameter("search")!="") {
                            search = " AND title LIKE '%"+request.getParameter("search")+"%' OR city LIKE '%"+request.getParameter("search")+"%' ";
                        }else{
                            search="";
                        }
                    
                    %>



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
                            String sql = "SELECT * FROM advertisement INNER JOIN images ON advertisement.aid = images.aid WHERE status='1' "+city_filter+min_size+max_size+search+sort;
                            pstmt = conn.prepareStatement(sql);

                            // Execute the query
                            rs = pstmt.executeQuery();
                            
                            //intialize variable for search results not found
                            int res =0;

                            // Iterate over the result set and display property details
                            while (rs.next()) {
                                res++; // check the results found or not
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
                    <div class="mb-4 p-3 add-div">
                        <div class="row">

                            <div class="col-sm-4">
                                <!-- image -->
                                <a href="advertisement.jsp?aid=<%out.print(aid);%>"><img src="images/upload/<%out.print(img1);%>"  alt="pic" class="img-fluid add-img"/>
                                </a>
                            </div>
                            <!-- details -->
                            <div class="col-sm-8">
                                <a href="advertisement.jsp?aid=<%out.print(aid);%>"><h1 class="add-text-1"><%out.print(title);%></h1></a>
                                <p class="add-text-5">Posted on <%out.print(date_time);%></p>
                                <p class="add-text-2">Bedrooms: <%out.print(bed);%> | Bathroom: <%out.print(bath);%></p>
                                <p class="add-text-3"><%out.print(city);%>, Sri Lanka</p>
                                <p class="add-text-4 f-cl1">Rs <%out.print(formattedPrice);%>/-</p>
                                <div class="text-end">
                                    <a href="advertisement.jsp?aid=<%out.print(aid);%>" class="btn btn-sm btn-warning text-white ">View more</a>
                                </div>
                            </div>

                        </div>

                    </div><!-- advertisement End-->
                    
                    

                    <%
                            }//end while loop

                            // check the results found or not
                           if(res==0){  %>
                           
                    <h2 class=" text-danger text-center">"No search results were found <% if(request.getParameterMap().containsKey("search")){out.print("for '"); out.print(request.getParameter("search")); out.print("' "); }%> "</h2>
                   
                        
                    
                    <%    }

                        }  //end try 
                        catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>






                </div><!-- Adds End -->






            </div>

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
