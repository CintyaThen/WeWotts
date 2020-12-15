<%-- 
    Document   : delete
    Created on : Dec 14, 2020, 9:36:07 AM
    Author     : DELL
--%>

<%@page import="TheConnection.DbKoneksi"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection con = null;
    PreparedStatement ps = null;
    Statement st = null;
    String id = request.getParameter("id");
    try {
        DbKoneksi koneksi = new DbKoneksi();
        con = koneksi.getConnection();
        String sql = "delete from film where id="+id+"";
        st = con.createStatement();
        st.executeUpdate(sql);
        out.println("Film berhasil dihapus."); %>
        <a href='file-list.jsp'> Kembali ke daftar film. </a>
    <%} catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%> 
