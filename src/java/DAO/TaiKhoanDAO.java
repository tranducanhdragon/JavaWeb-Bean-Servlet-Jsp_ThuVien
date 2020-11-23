/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Context.DbContext;
import Model.TaiKhoan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
/**
 *
 * @author DucAnhTran
 */
public class TaiKhoanDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<TaiKhoan> getListTaiKhoan(){
        try {
            String query = "select * from TaiKhoan";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<TaiKhoan> list = new ArrayList<TaiKhoan>();
            while(rs.next()){
                TaiKhoan tk = new TaiKhoan(rs.getString(1), rs.getString(2), rs.getInt(3));
                list.add(tk);
            }
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public TaiKhoan LoginCheck(String username, String password){
        try {
            String query = "select * from TaiKhoan where TenDangNhap = ? and MatKhau = ?";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                TaiKhoan tk = new TaiKhoan(rs.getString(1), rs.getString(2), rs.getInt(3));
                conn.close();
                return tk;
            }            
        } catch (Exception e) {
        }
        return null;
    }
}
