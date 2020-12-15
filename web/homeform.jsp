<%-- 
    Document   : home
    Created on : Dec 5, 2020, 9:16:06 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>WE WOTTS'S HOME</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href='https://fonts.googleapis.com/css?family=Annie Use Your Telescope' rel='stylesheet'>
    </head>
    <style>
        fieldset{
            background: #fff;
            border: 1px solid #ccc;
            padding: 20px auto;
            width: 500px;
        }
        h3.logo {
            padding: 20px;
            font-family: serif;
            color: #312c28
        }
        img.logo{
            height: 50px; width: 50px;
            border: 2px;
        }
        /* Style the search field */
        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid grey;
            float: left;
            width: 35%;
            background: #f1f1f1;
            position: relative;
            top: -80px;
            left: 25%;
        }

        /* Style the submit button */
        form.example button {
            float: left;
            width: 5%;
            padding: 10px;
            background: #757472; //warna icon search #f2c777;
            color: white;
            font-size: 17px;
            border: 1px solid grey;
            border-left: none; /* Prevent double borders */
            cursor: pointer;
            position: relative;
            top: -80px;
            left: 25%;
        }
        hr.header{
            top: -75px;
            position: relative;

        }
        form.example button:hover {
            background: #312C28;//#ec8c65;
        }

        /* Clear floats */
        form.example::after {
            content: "";
            clear: both;
            display: table;
        }
        body{
            background: #EFEFEF; font-family: Arial, tahoma;
        }

        img{
            height: 150px; width: 150px;
            border: 2px;
        }
        .display {

            top : 5px;
            right : 150px;
            position: absolute;
            font-size: 22px;
            font-family: 'Annie Use Your Telescope';
        }
        .logout{
            height: 50px;
            left: 30px;
            position: fixed;
        }
        .icon{
            top: 101px;
            padding: 5px;
            position: absolute;
        }
        .icon1{
            top: 5px;
            padding: 5px;
            position: absolute;
        }
        .icon2{
            top: 55px;
            padding: 5px;
            position: absolute;
        }
        .icon3{
            top: 170px;//100px;
            padding: 5px;
            position: absolute;
        }
        .icon4{
            top: 220px;//100px;
            padding: 5px;
            position: absolute;
        }
        .icon5{
            top: 265px;//100px;
            padding: 5px;
            position: absolute;
        }
        ul {
            list-style-type: none;
            top: -70px;
            position: relative;
            margin: 10px;
            padding: 0px;
            background-color: transparent;

        }
        .vertical{
            border-left: 2px solid black;
            height: 1000px; 
            position: absolute; 
            left: 15%;
            top: 105px; 
        }

        li {
            display: table-header-group;
        }

        li a{
            display: block;
            padding: 15px;
            padding-left: 30px;
            color: #312C28;
            text-decoration: none;
        }
        li a:hover {
            background-color: #E7AB3D;
            //padding: 10px;

        }
        label{margin-bottom: 10px; display: block;}
        input{margin-bottom: 10px;}

    </style>
    <body>
        <img class="logo" src="Media/logo.png" align="left">
        <h3 class="logo"> WE WOTTS </h3>

        <!-- Search bar -->
        <br>
        <div id="header" class="section">
            <!-- Load icon library -->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <!-- The form -->
            <form class="example" action="action_page.php">
                <input type="text" placeholder="Telusuri.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>         
        </div>


        <link href="https://fonts.googleapis.com/css?family=Handlee" rel="stylesheet">
        <hr class="header">
        <!-- Menu -->
        <nav>
            <ul id="nav">
                <li><a href="home.jsp">Beranda</a></li>
                <svg class="icon1" style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8" fill="#312C28"></path>
                </svg> 
                <li><a href="formupload.jsp">Upload Film</a>
                    <svg class="icon2" style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                    <path d="M18 3v2h-2V3H8v2H6V3H4v18h2v-2h2v2h8v-2h2v2h2V3h-2zM8 17H6v-2h2v2zm0-4H6v-2h2v2zm0-4H6V7h2v2zm10 8h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V7h2v2z""></path>
                    </svg>
                <li><a href="file-list.jsp">Daftar Film</a>
                    <svg class="icon" style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                    <path d="M4 6H2v14c0 1.1.9 2 2 2h14v-2H4V6zm16-4H8c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm-8 12.5v-9l6 4.5-6 4.5z" fill="#312C28"></path>
                    </svg>
            </ul>
        </nav>

        <div class="vertical"></div>
        <!--LOGIN SETTING -->
        <h5 class="display"> 
            <!--SESSION LOGIN -->
            <%-- 
                if (session.getAttribute("Login Saved") == null || session.getAttribute("Login Saved") == "") {
                    response.sendRedirect("loginform.jsp");
                }
            --%>

            <!--COOKIE -->
            <%
                String login = null;
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie cookie : cookies) {
                        if (cookie.getName().equals("login")) {
                            login = cookie.getValue();
                        }
                    }
                }
            %>
            Halo, <%=login%>!, <%= session.getAttribute("Login Saved")%>! :)
        </h5>


        <br>
        <h5 class="logout"><a href="logout.jsp">Logout!</a></h5>
    </body>
</html>



