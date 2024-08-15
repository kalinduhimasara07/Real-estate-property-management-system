<%-- 
    Document   : contact-us
    Created on : Aug 2, 2024, 11:42:04 PM
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
                        <% }%>
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
        
        <%
            if (request.getParameterMap().containsKey("s")) {


        %>
        <div class="container mt-4 p-3 bg-white">
            <p style="font-size: 22pt;" class="text-success text-center fw-bold">"You have successfully sent a message."</p>
            <p style="font-size: 15pt;" class="text-danger text-center fw-bold">  Please wait!  our admin will contact you shortly.</p>
            <center><a href="index.jsp" class="btn btn-success">Go to Home Page</a></center>
        </div>

        <% 
            }%>

        <!--main area--> 
        <div class="m-5 mb-5">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-5 mb-5 p-5 text-white" style="background-color: #146C94;">
                        <h4>Contact us</h4>
                        <hr>
                        <div class="mt-5">
                            <div class="d-flex">
                                <i class="bi bi-telephone-fill"></i>
                                <p style="font-size: 14px">Contact: 0112222222</p>
                            </div>
                            <hr>
                            <div class="d-flex">
                                <i class="bi bi-envelope-fill"></i>
                                <p style="font-size: 14px">Email: idamlk@gmail.com</p>
                            </div>
                            <hr>
                            <div class="d-flex">
                                <i class="bi bi-facebook"></i>
                                <p style="font-size: 14px">Facebook: facebook.com/idamlk</p>
                            </div>
                            <hr>
                            <div class="d-flex">
                                <i class="bi bi-instagram"></i>
                                <p style="font-size: 14px">Instagram: instagram.com/idamlk</p>
                            </div>
                            <hr>
                        </div>

                    </div>
                    <div class="col-md-7 mb-5 p-5" style="background-color: white;">
                        <form action="contact-us.jsp?s=0" method="POST">
                            <h4 class="pb-2">Send a Message</h4>
                            <div class="mb-3 mt-2">
                                <label for="exampleFormControlInput1" class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="John Perera">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Email</label>
                                <input type="email" class="form-control" name="email" id="exampleFormControlInput1" placeholder="perera@gmail.com">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Contact Number</label>
                                <input type="text" class="form-control" name="contactNo" id="exampleFormControlInput1" placeholder="0771234567">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">Message</label>
                                <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3"
                                          placeholder="Your Message"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary" >Send</button>

                        </form>
                    </div>      
                </div>
            </div>
        </div>
        <!--main area end-->


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
