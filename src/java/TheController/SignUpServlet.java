/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheController;

import TheDAO.SignUpDao;
import TheModel.SignUpBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class SignUpServlet extends HttpServlet {

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
        
        String nama = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String tanggalLahir = request.getParameter("birthday");
        String password = request.getParameter("password");
        
        SignUpBean signup = new SignUpBean();
        
        signup.setNama(nama);
        signup.setUsername(username);
        signup.setEmail(email);
        signup.setTanggalLahir(tanggalLahir);
        signup.setPassword(password);
        
        SignUpDao signupdao = new SignUpDao();
        
        String confirmSIGNUP = signupdao.confirmDaftar(signup);
        
        if (confirmSIGNUP.equals("SIGNUP BERHASIL")) {
            request.setAttribute("Sign Up Saved", confirmSIGNUP);
            RequestDispatcher rd = request.getRequestDispatcher("loginform.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("Failed Sign Up", confirmSIGNUP);
            RequestDispatcher rd = request.getRequestDispatcher("index.html");
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
