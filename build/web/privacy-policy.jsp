<%-- 
    Document   : privacy-policy
    Created on : Aug 2, 2024, 11:40:06 PM
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
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-warning" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--nav bar close-->


        <!--main area--> 
        <div class="mb-5 bg-light text-dark m-5 p-5 about-us">
            <h1 class="bg-dark text-white p-3">PRIVACY POLICY</h1>
            <p>At idam.lk, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect your data when you use our website and services.</p>

            <h2>Information We Collect</h2>
            <p>We collect various types of information to provide and improve our services, including:</p>
            <ul>
                <li>Personal Information: When you register or use our services, we may collect information such as your name, email address, phone number, and postal address.</li>
                <li>Property Information: Details about the properties you list or interact with on our platform.</li>
                <li>Usage Data: Information on how you use our website, including your IP address, browser type, pages visited, and time spent on our site.</li>
                <li>Cookies and Tracking Technologies: We use cookies and similar technologies to enhance your experience, analyze site traffic, and personalize content.</li>
            </ul>


            <h2>How We Use Your Information</h2>
            <p>We use the information we collect for various purposes, including:</p>
            <ul>
                <li>Providing Services: To facilitate real estate transactions, manage your account, and offer customer support.</li>
                <li>Improving Our Platform: To enhance our website, develop new features, and optimize user experience.</li>
                <li>Communication: To send you updates, newsletters, marketing materials, and respond to your inquiries.</li>
                <li>Security and Compliance: To protect against fraud, enforce our terms of service, and comply with legal obligations.</li>
            </ul>



            <h2>Information Sharing and Disclosure</h2>
            <p>We may share your information with third parties under the following circumstances:</p>
            <ul>
                <li>Service Providers: We engage trusted third-party service providers to perform functions on our behalf, such as payment processing and data analysis.</li>
                <li>Legal Requirements: We may disclose your information if required by law or in response to legal processes, such as subpoenas or court orders.</li>
                <li>Business Transfers: In the event of a merger, acquisition, or sale of assets, your information may be transferred as part of the transaction.</li>
            </ul>

            <h2>Data Security</h2>
            <p>We implement robust security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. However, please note that no method of transmission over the internet or electronic storage is 100% secure.</p>

            <h2>Your Rights and Choices</h2>
            You have certain rights regarding your personal information, including:
            <ul>
                <li>Access and Update: You can access and update your personal information through your account settings.</li>
                <li>Opt-Out: You may opt out of receiving marketing communications from us by following the unsubscribe instructions in our emails.</li>
                <li>Data Deletion: You can request the deletion of your personal information, subject to legal and contractual obligations.</li>
                <li></li>
            </ul>

            <h2>Changes to This Privacy Policy</h2>
            <p>We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. We will notify you of any significant changes by posting the new policy on our website and updating the effective date.</p>

            <h2>Contact Us</h2>
            <p>If you have any questions or concerns about our Privacy Policy or how we handle your personal information, please contact us at:</p>

            <p>idam.lk <br>
                Email: support@idam.lk<br>
                Phone: +94-76-150-2959<br>
                Address: UWU Passara Road, Badulla.</p>

            <p>By using our website and services, you consent to the terms of this Privacy Policy. Thank you for trusting idam.lk with your real estate needs.</p>
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
