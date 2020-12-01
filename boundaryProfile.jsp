<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TAMPILAN PROFILE</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <style>
      
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
            width: 50%;
            background: #f1f1f1;
            position: relative;
            top: -80px;
            left: 25%;
        }

        /* Style the submit button */
        form.example button {
            float: left;
            width: 5%;
            padding: 12px;
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
        #search {
            font-family: Florence;
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 5px;
            width: 320px;
            border-color: grey;
            background-color: #DCDCDC;
            text-align: left;
            font-size: 16px;
        }
        #cari{
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 5px;
            width: 320px;
        }
        legend{
            background: #fff;
            border: 1px solid #ccc;
            padding: 10px;
        }
        ul {
            list-style-type: none;
            top: -70px;
            position: relative;
            margin: 10px;
            padding: 0px;
            background-color: #f1f1f1;

        }
        .vertical{
            border-left: 2px solid black;
            height: 500px;
            position: absolute;
            left: 15%;
            top: 100px;
        }

        li {
            display: table-header-group;
        }

        li a{
            display: block;
            padding: 10px;
            color: #312C28;
            text-decoration: none;
        }
        li a:hover {
            background-color: #E7AB3D;
            padding: 10px;

        }
        .wrapper{
            position: absolute;
            top: 25%;
            left: 40%;
            transform: translate (-50%,50%);
            width: 450px;
            display: flex;
            box-shadow: 0 1px 25px 0 rgba(69,90,100,0.08)
        }

        label{margin-bottom: 10px; display: block;}
        input{margin-bottom: 10px;}


    </style>
    <body>
        <img class="logo" src="images/logo.png" align="left">
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
                <li class="clicked">
                    <a href="#"style="color:#000000">Beranda</a>
                    <svg style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                    <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8" fill="red"></path>
                    </svg> 
                </li>
                <li>
                    <a href="trending.jsp">Trending</a>
                    <svg style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                    <path d="M18.7 8.7H5.3V7h13.4v1.7zm-1.7-5H7v1.6h10V3.7zm3.3 8.3v6.7c0 1-.7 1.6-1.6 1.6H5.3c-1 0-1.6-.7-1.6-1.6V12c0-1 .7-1.7 1.6-1.7h13.4c1 0 1.6.8 1.6 1.7zm-5 3.3l-5-2.7V18l5-2.7z" fill="#606060"></path>
                    </svg>
                </li>
                <li>
                    <a href="following.jsp">Mengikuti</a>

                </li>
                <li><br>
                <li>
                    <a href="boundaryProfile.jsp">Video Saya  </a>
                    <svg style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24" >
                    <path d="M18 3v2h-2V3H8v2H6V3H4v18h2v-2h2v2h8v-2h2v2h2V3h-2zM8 17H6v-2h2v2zm0-4H6v-2h2v2zm0-4H6V7h2v2zm10 8h-2v-2h2v2zm0-4h-2v-2h2v2zm0-4h-2V7h2v2z"></path>
                    </svg>
                </li>
                <li>
                    <a href="library.jsp">Perpustakaan Saya</a>
                    <svg style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                    <path d="M4 6H2v14c0 1.1.9 2 2 2h14v-2H4V6zm16-4H8c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm-8 12.5v-9l6 4.5-6 4.5z" fill="#606060"></path>
                    </svg>
                </li>
                <li>
                    <a href="boundaryHistory.jsp">Riwayat</a>
                    <svg style="display: block; height: 24px; width: 24px;margin: auto;" viewBox="0 0 24 24">
                    <path d="M11.9 3.75c-4.55 0-8.23 3.7-8.23 8.25H.92l3.57 3.57.04.13 3.7-3.7H5.5c0-3.54 2.87-6.42 6.42-6.42 3.54 0 6.4 2.88 6.4 6.42s-2.86 6.42-6.4 6.42c-1.78 0-3.38-.73-4.54-1.9l-1.3 1.3c1.5 1.5 3.55 2.43 5.83 2.43 4.58 0 8.28-3.7 8.28-8.25 0-4.56-3.7-8.25-8.26-8.25zM11 8.33v4.6l3.92 2.3.66-1.1-3.2-1.9v-3.9H11z" fill="#606060"></path>
                    </svg>
                </li>
            </ul>
        </nav>
        <div class="vertical"></div>

        <div class="wrapper">
            <div class="left">
                <img src="images/profile.jpg" alt="user" width="50">
                <h4>@Kelompok4</h4>

            </div>

            <div class="right">
                <div class="info">
                    <h3>Information</h3>
                    <p>following </p>
                    <p>follower</p>
                    <div class="info_data">
                        <div class="data">
                            <h4>Email</h4>
                            <p>kelompok4@RPL</p>
                        </div>
                        <div class="data"></div>
                        <h4>Phone</h4>
                        <p>091177343</p>
                        <a href="changePassword.jsp">Change Password</a><br>
                        <a href="changeAccInfo">Change Account Info</a>
                    </div>
                </div></div>
        </div>
    </body>
</html>
