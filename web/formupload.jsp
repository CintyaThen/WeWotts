<%-- 
    Document   : formupload
    Created on : Dec 14, 2020, 8:15:01 PM
    Author     : DELL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unggah Film</title>
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

            .uploadbox{
                width: 450px;
                height: 480px;
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

            .uploadbox .logo {
                margin: 0;
                padding: 0;
                width: 150px;
                height: 150px;
                top: -19%;
                position: absolute;
                left: calc(50% - 75px);

            }

            .uploadbox h1 {
                margin-top: 50px;
                padding: 0;
                text-align: center;
                font-size: 22px;
                font-family: 'Annie Use Your Telescope';
            }

            .uploadbox h4 {
                margin-top: 5px;
                padding: 0;
                text-align: center;
                font-size: 20px;
                font-family: Monospace;
            }

            .uploadbox p{
                margin: 0;
                padding: 0;
                font-weight: bold;
            }

            .uploadbox input {
                width: 80%;
                margin-bottom: 10px;
                border-radius: 5px;
            }


            .uploadbox input[type="submit"] {
                display: block;
                border: none;
                outline: none;
                height: 30px;
                background: #eccc68;
                color: #000;
                font-size: 15px;
                

            }

            .uploadbox input[type="submit"]:hover {
                border: none;
                outline: none;
                height: 30px;
                background: #ff6348;
                color: #fff;
                font-size: 15px;
                border-radius: 20px;
                cursor: pointer;
            }

            .uploadbox a {
                color: #000;
                font-size: 15px;
                line-height: 20px;
            }

            .uploadbox a:hover {
                color: #006400;
            }


        </style>
    </head>
    <body>
        <br><br><br><br>

        <div class="container">
            <div class="uploadbox">
                <img class="logo" src="Media/logo.png">
                <h1>WE WOTTS</h1>
                <hr/>
                <h4>Unggah Film</h4>
                <form action="UploadServlet" method="post" enctype="multipart/form-data">


                    <table width="400px" align="center" border=2>
                        <tr>
                            <td align="center" colspan="2">Detail Film</td>
                        </tr>
                        <tr>
                            <td>ID Film</td>
                            <td>
                                <input type="text" required="" name="id">
                            </td>
                        </tr>
                        <tr>
                            <td>Judul </td>
                            <td>
                                <input type="text" required="" name="judul">
                            </td>
                        </tr>
                        <tr>
                            <td>Pilih File </td>
                            <td>
                                <input type="file" required="" name="file">
                            </td>
                        </tr>
                        <tr>
                            <td>Genre </td>
                            <td><select name="genre">
                            <option value="Aksi">Aksi</option>
                            <option value="Horror">Horror</option>
                            <option value="Petualangan">Petualangan</option>
                            <option value="Fiksi Ilmiah">Fiksi Ilmiah</option>
                            <option value="Komedi">Komedi</option>
                            <option value="Drama">Drama</option>
                            <option value="Random">Random</option>
                        </select>
                    </td>
                        </tr>
                        <tr>
                            <td>Deskripsi </td>
                            <td>
                                <input type="text" required="" name="desc">
                            </td>
                        </tr>

                    </table>
                    <br><center><input type="submit" value="Submit"><center>
                    <a href = "home.jsp">Home</a> 
                </form>
            </div>
        </div>

    </body>
</html>