/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheDAO;

import TheConnection.DbKoneksi;
import TheModel.LoginBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class LoginDao {

    public String confirmLogin(LoginBean login) {
        String email = login.getEmail();
        String password = login.getPassword();

        Connection con = null;
        PreparedStatement ps = null;
        try {
            DbKoneksi koneksi = new DbKoneksi();
            con = koneksi.getConnection();

            ps = con.prepareStatement("select * from registereduser where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String dbemail = rs.getString("email");
                String dbpassword = rs.getString("password");
                if (email.equals(dbemail) && password.equals(dbpassword)) {
                    return "LOGIN BERHASIL";
                }
            }
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "email & password salah.";
    }
}
