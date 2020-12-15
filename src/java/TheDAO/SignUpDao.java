/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheDAO;

import TheConnection.DbKoneksi;
import TheModel.SignUpBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class SignUpDao {

    public String confirmDaftar(SignUpBean signup) {
        String nama = signup.getNama();
        String username = signup.getUsername();
        String email = signup.getEmail();
        String tanggalLahir = signup.getTanggalLahir();
        String password = signup.getPassword();

        Connection con = null;
        PreparedStatement ps = null;
        try {
            DbKoneksi koneksi = new DbKoneksi();
            con = koneksi.getConnection();
            
            ps = con.prepareStatement("insert into registereduser(email,nama,tanggallahir,id_user,password) values(?,?,?,?,?)");
            ps.setString(1, email);
            ps.setString(2, nama);
            ps.setString(3, tanggalLahir);
            ps.setString(4, username);
            ps.setString(5, password);

            ps.executeUpdate();

            ps.close();
            con.close();
            
            return "SIGNUP BERHASIL";
        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Sign up gagal.";
    }
}
