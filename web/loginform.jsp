<%-- 
    Document   : loginform
    Created on : Dec 06, 2020
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to We Wotts</title>
        <link href='https://fonts.googleapis.com/css?family=Annie Use Your Telescope' rel='stylesheet'>
        <style>
            body {
                background-image: url('Media/background-img.jpg');
                background-size: cover;
                margin: 0;
                padding: 0;
                height: 100%;
                box-sizing: border-box;
            }

            .container {
                width: 80%;
                height: 100%;
                margin: 0 auto;
            }

            .loginbox{
                width: 320px;
                height: 370px;
                background: #f5f5f5;
                margin: 0;
                padding: 30px;
                top: 55%;
                left: 50%;
                color: #000;
                border-radius: 15px;
                position: absolute;
                transform: translate(-50%, -50%);
                box-sizing: border-box;
            }

            .loginbox .logo {
                margin: 0;
                padding: 0;
                width: 150px;
                height: 150px;
                top: -19%;
                position: absolute;
                left: calc(50% - 75px);

            }

            .loginbox h1 {
                margin-top: 50px;
                padding: 0;
                text-align: center;
                font-size: 22px;
                font-family: 'Annie Use Your Telescope';
            }

            .loginbox h4 {
                margin-top: 5px;
                padding: 0;
                text-align: center;
                font-size: 20px;
                font-family: Monospace;
            }

            .loginbox p{
                margin: 0;
                padding: 0;
                font-weight: bold;
            }

            .loginbox input {
                width: 100%;
                margin-bottom: 10px;
                border-radius: 5px;
            }

            .loginbox input[type="email"],
            .loginbox input[type="password"] {
                border: none;
                background: #524d4d;
                border-bottom: 1px solid #fff;
                outline: none;
                height: 25px;
                color: #fff;
                font-size: 15px;
            }

            .loginbox input[type="submit"] {
                display: block;
                border: none;
                outline: none;
                height: 30px;
                background: #eccc68;
                color: #000;
                font-size: 15px;
                border-radius: 20px;
            }

            .loginbox input[type="submit"]:hover {
                border: none;
                outline: none;
                height: 30px;
                background: #ff6348;
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
                cursor: pointer;
            }

            .loginbox a {
                color: #000;
                font-size: 15px;
                line-height: 20px;
            }

            .loginbox a:hover {
                color: #006400;
            }


        </style>
    </head>
    <body>
        <div class="container">
            <div class="loginbox">
                <img class="logo" src="https://drive.google.com/thumbnail?id=1Rfj7iKemxcTL4YhIutNPGxxd6dKfIfiN">
                <h1>WE WOTTS</h1>
                <hr/>
                <h4>Log In</h4>
                <form action="./LoginServlet" method="post">      
                    <p>Email</p>  
                    <input type="email" placeholder="Email" name="email" required>                  
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit"  value="Login">
                    <a href="signupform.jsp">Belum mendaftar?</a>
                </form>
            </div>
        </div>
    </body>
</html>