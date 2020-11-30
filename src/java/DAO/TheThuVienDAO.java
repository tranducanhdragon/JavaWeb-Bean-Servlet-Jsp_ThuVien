/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DbContext;
import Model.Muon;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DucAnhTran
 */
public class TheThuVienDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public void insertToMuon(String idthe, String maSach, int soluong){
        try {
            String query = "insert into Muon(IDThe, MaSach,SoLuongSach) values ( ? , ? , ? )";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, parseInt(idthe));
            ps.setInt(2, parseInt(maSach));
            ps.setInt(3, soluong);
            rs = ps.executeQuery();
            
            conn.close();
        } catch (Exception e) {
        }
    }
    public void deleteFromMuon(String idthe, String maSach){
        try{
            String query = "delete from Muon where IDThe = ? and MaSach = ?";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, parseInt(idthe));
            ps.setInt(2, parseInt(maSach));
            rs = ps.executeQuery();
            
            conn.close();
        }
        catch(Exception e){
            
        }
    }
}
