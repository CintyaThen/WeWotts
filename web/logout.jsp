<%-- 
    Document   : logout
    Created on : Dec 9, 2020, 5:47:04 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie ck = new Cookie("login", "welcome");
            ck.setMaxAge(0);
            response.addCookie(ck);

            session.invalidate();
            response.sendRedirect("loginform.jsp");
        %>
    </body>
</html>
