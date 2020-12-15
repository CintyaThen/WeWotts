/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheController;

import TheDAO.LoginDao;
import TheModel.LoginBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class LoginServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        LoginBean login = new LoginBean();

        login.setEmail(email);
        login.setPassword(password);

        LoginDao logindao = new LoginDao();

        String confirmLGN = logindao.confirmLogin(login);

        //cookie
        Cookie ck = new Cookie("login", "welcome");
        ck.setMaxAge(60 * 60 * 24 * 7); //1 week

        
        if (confirmLGN.equals("LOGIN BERHASIL")) {
            response.addCookie(ck);
            HttpSession oldsession = request.getSession(false);
            if (oldsession != null) {
                oldsession.invalidate();
            }
            HttpSession newsession = request.getSession(true);
            newsession.setAttribute("Login Saved", login.getEmail());
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("Failed Login", confirmLGN);
            RequestDispatcher rd = request.getRequestDispatcher("index.html");
            PrintWriter out = response.getWriter();
            out.print("<h1>Email/password salah. Silahkan login ulang.</h1>");
            rd.include(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
