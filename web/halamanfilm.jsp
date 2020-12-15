<%-- 
    Document   : halamanfilm
    Created on : Dec 14, 2020, 9:56:16 AM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="TheConnection.DbKoneksi"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Halaman Film</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
         <link href='https://fonts.googleapis.com/css?family=Annie Use Your Telescope' rel='stylesheet'>
    </head>
    <style>
        #left,#p1,.right,.form,#sbm,#right,#p2,.pp
        {
            font-size:10pt;
            font-weight: bold;
            font-family:arial;
        }
        #all 
        {
            width: 1000px;
            height: 1000px;
        }
        video{
            width: 700px;
            height: 450px;
            top: -50px;
            left: -20px;
            position: relative;
        }
        #left
        {

            width: 58%;
            margin-top:-95px;
            height: 730px;
            float:none !important;
            border: 1px solid black;
            border-width:1px;
            border-radius: 25px;
            //border-color:rgb(200,200,200);
            padding:25px;
            margin-bottom:6px;
            margin-left:280px;
            background-color: lightgray;
        }
        #p1
        {
            margin-top: 50px;
            width:700px;
            background-color: #f2c777;
            text-align: center;
            border-radius:10px;
            font-size:12pt;
        }
        h3.logo {
            padding: 20px;
            font-family: serif;
            color: #312c28;
            text-align: center;

        }
        img.logo{
            height: 50px; width: 50px;
            border: 2px; right : 150px;
        }
        .right
        {
            text-align:center;
            background-color:white;
        }
        .form
        {
            text-align:right;
        }
        #sbm
        {
            background-color: rgb(124,231,199);
        }
        <%--#right
        {
            margin-top: -95px;
            width:550px;
            height:730px;
            float: right;
            padding:10px;
            text-align:right;
            border-color:rgb(200,200,200);
            border-style: solid;
            border-width:1px;
            margin-bottom:6px;
            text-align:center;
        } --%>
        #p2
        {
            background-color:#f2c777;
            margin-top:2px;
            border-radius: 10px;
            text-align:center;
            font-size:12pt;
        }
        .pp
        {
            background-color :rgb(195,195,195);
            margin:4px;
            padding:1px;
            border-color: rgb(165,165,165);
            border-style:solid;
            border-width:1px;
        }
        #plast
        {
            vertical-align: central;
        }
        #img 
        {
            border-radius:30px;
        }
        #p3
        {
            background-color:rgb(124,231,199);
            margin-top:5px;
            border-radius: 10px;
            text-align:center;
            font-size:12pt;
        }
        html {
            margin: 0;
            padding: 0;
        }
        h2 {
            font-size: 25pt;
            color: #000;
            text-align: left;
            padding: 15px 0 15px 0;
            margin: 0 0 10px 0;
        }

        .section {
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 10px;
        }
        * {
            box-sizing: border-box;
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
            top: -100px;
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
            background-image : url('Media/background-img.jpg'); 
            font-family: Arial, tahoma;
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
        .comment{
            padding: 10px;
            width: 500px;

            border-radius: 5px;
            border: none;
            box-shadow: inset 0 0 2px grey;
            font-weight: bold;
            position: relative;
        }
        a{
            display: block;
            color: black;
            text-decoration: none;

        }
        a:hover{
            display: block;
            color: darkgreen;
            text-decoration: underline;
        }
        textarea{
            height: 200px;

        }

        label{margin-bottom: 10px; display: block;}
        input{margin-bottom: 10px;}

    </style>
    <body>
        <h3 class="logo"><a href='home.jsp'> WE WOTTS </a></h3>
        

        <!-- Koneksi film -->
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

        %>
        <%

            Connection con = null;
            PreparedStatement ps = null;
            DbKoneksi koneksi = new DbKoneksi();
            String id = request.getParameter("id");
            con = koneksi.getConnection();

            String sql = "select * from film where id=" + id + "";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <link href="https://fonts.googleapis.com/css?family=Handlee" rel="stylesheet">
        <hr class="header">
        <!-- Page Film -->
    </div>
    <div id="left">
        <p id="p1">Film</p>
        <br>
        <form action="#" method="get" class="form" >

            <video width="320" height="240"  
                   src="<%=rs.getString(4)%>" 
                   type="video/mp4" 
                   controls>

            </video>
            <h4 style="text-align: left"><%=rs.getString(1)%></h4>
            <hr class="garis">
            <h3 style="text-align: left"><%=rs.getString(2)%></h3>
            <h4 style="text-align: left"><%=rs.getString(7)%></h4>
            <%
                }

            %>
        </form>
    </div>
    <!-- <div id="right">
        <br>
        <br>
        <br>
        <hr>
        <p style="text-align: left">Komentar</p>
        <textarea class="comment" id="text" placeholder="Tambahkan komentar.." onkeyup="countLetter()"></textarea>
        <span id="alrtTxt"></span>
        <input class="comment" type="submit" value="Kirim" id="submit" disabled>
        <script>
            function countLetter() {
                var txt = document.getElementById("text");
                var txtVal = txt.value.length;
                var maxTxtVal = 160 - txtVal;

                var alrtTxt = document.getElementById("alrtTxt");

                if (maxTxtVal < 0) {
                    alrtTxt.style.color = "red";
                    txt.style.color = "red";
                    txt.style.border = "2px solid red";
                    alrtText.innerHTML = maxTxtVal + "Text length ...";
                    document.getElementById("submit").disabled = true;
                } else {
                    alrtTxt.style.color = "green";
                    txt.style.color = "green";
                    txt.style.border = "2px solid green";
                    alrtTxt.innerHTML = maxTxtVal + "left";
                    document.getElementById("submit").disabled = false;
                }
            }
        </script>
    </div> -->
</body>
</html>
<!-- search bar
 <div id="header" class="section">
<!-- Load icon library -->
<!--link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- The form -->
<!--form class="example" action="action_page.php">
    <input type="text" placeholder="Telusuri.." name="search">
    <button type="submit"><i class="fa fa-search"></i></button>
</form>
</div>
<--<img class="logo" src="Media/logo.png" align="left">-->
