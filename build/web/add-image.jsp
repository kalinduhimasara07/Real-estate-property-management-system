<%-- 
    Document   : add-image
    Created on : Jul 26, 2024, 11:11:01 PM
    Author     : kalin
--%>

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
            String user_name="";
            if (session.getAttribute("user_id") != null) {
                int user_id = (Integer) session.getAttribute("user_id");
                user_name = (String)session.getAttribute("user_name");
                
            } else {
                response.sendRedirect("login.jsp?x=1");
            }

                int aid = Integer.parseInt(request.getParameter("aid"));
                        

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
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-warning" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--nav bar close-->
        
        
        

        <!-- main area -->
        <div class="container mt-4 p-3 bg-white">
            <p style="font-size: 22pt;">Welcome! <% // out.println(user_name); %></p>
            <a href="user-acc.jsp" class="btn btn-dark">Go Back</a>

            <h1 class="mt-4">Add Images</h1>
            <form method="POST" action="NewServlet" enctype="multipart/form-data" >
                <div class="row">
                    
                    <div class="col-sm-4 mb-3">
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
                    </div>
                    
                    <input type="hidden" name="aid" value="<%out.print(aid);%>">


                    <div class="col-sm-12 mb-3">
                        <input type="submit" class="btn btn-primary w-100">
                    </div>

                </div>
            </form>

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

