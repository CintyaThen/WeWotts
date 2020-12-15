<%-- 
    Document   : file-list
    Created on : Dec 14, 2020, 08:20:10 PM
    Author     : DELL
--%>

<%@page import="java.sql.Statement"%>
<%@page import="TheConnection.DbKoneksi"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daftar Film</title>
        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
            body {
                background-size: cover;
                margin: 0;
                padding: 0;
                height: 100%;
                box-sizing: border-box;
                background-color: #f5f5f5;
                font-family: 'Annie Use Your Telescope';
            }

            .container {
                width: 80%;
                height: 100%;
                margin: 0 auto;
            }

            .filmlistbox{
                width: 100%;
                height: 90%;
                background: transparent;
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

            .filmlistbox .logo {
                margin: 0;
                padding: 0;
                width: 50px;
                height: 50px;
                top: 10%;
                position: absolute;
                left: calc(50% - 120px);

            }

            .filmlistbox h1 {
                margin-top: 50px;
                padding: 0;
                text-align: center;
                font-size: 22px;
                font-family: 'Annie Use Your Telescope';
            }

            .filmlistbox h1 a{
                margin-top: 50px;
                padding: 0;
                text-align: center;
                font-size: 22px;
                font-family: 'Annie Use Your Telescope';
                text-decoration: none;
            }

            .filmlistbox h4 {
                margin-top: 5px;
                padding: 0;
                text-align: center;
                font-size: 20px;
                font-family: Monospace;
            }

            .filmlistbox p{
                margin: 0;
                padding: 0;
                font-weight: bold;
            }

            .filmlistbox input {
                width: 100%;
                margin-bottom: 10px;
                border-radius: 5px;
            }

            .filmlistbox input[type="submit"] {
                display: block;
                border: none;
                outline: none;
                height: 30px;
                background: #eccc68;
                color: #000;
                font-size: 15px;
                border-radius: 20px;
            }

            .filmlistbox input[type="submit"]:hover {
                border: none;
                outline: none;
                height: 30px;
                background: #ff6348;
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
                cursor: pointer;
            }

            .filmlistbox a {
                color: #000;
                font-size: 15px;
                line-height: 20px;

            }

            .filmlistbox a:hover {
                color: #006400;
                text-decoration: underline;
            }

        </style>
    </head>
    <body>
        <br><br><br>
    <center>
        <%!
            Connection con = null;
            ResultSet rs = null;
            Statement st = null;
        %>
        <div class="container">
            <div class="filmlistbox">
                <img class="logo" src="https://drive.google.com/thumbnail?id=1Rfj7iKemxcTL4YhIutNPGxxd6dKfIfiN">
                <h1><a href='home.jsp'> WE WOTTS </a></h1>
                <hr/>
                <h4>Daftar Film</h4>
                <table border="1">
                    <tr>
                        <th>ID</th><th>Judul</th><th>Path</th><th>Tanggal Upload</th><th>Genre</th><th>Deskripsi</th><th>Hapus Film</th><th>Film</th>
                    </tr>
                    <%
                        DbKoneksi koneksi = new DbKoneksi();
                        con = koneksi.getConnection();

                        st = con.createStatement();
                        String sql = "select * from film";
                        rs = st.executeQuery(sql);

                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td> <%=rs.getString(4)%></td>
                        <td><%=rs.getTimestamp(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><a href="delete.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
                        <td><a href="halamanfilm.jsp?id=<%=rs.getString(1)%>">Nonton</a></td>
                    </tr>
                    <%
                        }
                        out.close();
                        rs.close();
                        st.close();
                        con.close();
                    %>

                </table><br>

            </div>
        </div>

    </center>
</body>
</html>
<!-- <td><a href="DownloadServlet?fileName=<--%=rs.getString(4)%>">Download</a></td> -->
<!-- <td> <video width="320" height="240"  src="<--%=rs.getString(4)%>" type="video/mp4" controls> </video> </td> -->