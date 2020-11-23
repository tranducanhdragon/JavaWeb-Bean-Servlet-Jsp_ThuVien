/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Context.DbContext;
import Model.Sach;
import Model.SachView;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
/**
 *
 * @author DucAnhTran
 */
public class SachDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Sach> getListSach(){
        try {
            String query = "select * from Sach";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            List<Sach> list = new ArrayList<Sach>();
            while(rs.next()){
                Sach sa = new Sach();
                sa.setMaSach(rs.getString(1));
                sa.setTenSach(rs.getString(2));
                sa.setMaTacGia(rs.getString(3));
                sa.setMaNXB(rs.getString(4));
                sa.setMaTheLoai(rs.getString(5));
                sa.setAnhDaiDien(rs.getString(6));
                list.add(sa);
            }
            conn.close();
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public Sach ChiTietSachByID(String id){
        try {
            String query = "select * from Sach where MaSach = ? ";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, parseInt(id));
            rs = ps.executeQuery();
            Sach sa = new Sach();
            while(rs.next()){
                sa.setMaSach(rs.getString(1));
                sa.setTenSach(rs.getString(2));
                sa.setMaTacGia(rs.getString(3));
                sa.setMaNXB(rs.getString(4));
                sa.setMaTheLoai(rs.getString(5));
                sa.setAnhDaiDien(rs.getString(6));
            }
            conn.close();
            return sa;
        } catch (Exception e) {
        }
        return null;
    }
    public SachView ChiTietSachViewByID(String id){
        try {
            String query = "select MaSach,TenSach,HoTen,TenTheLoai,TenNXB,Sach.AnhDaiDien from Sach "
                    + "join TacGia on Sach.MaTG = TacGia.MaTG "
                    + "join TheLoai on Sach.MaTheLoai = TheLoai.MaTheLoai "
                    + "join NXB on Sach.MaNXB = NXB.MaNXB "
                    + "where MaSach = ? ";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, parseInt(id));
            rs = ps.executeQuery();
            SachView sav = new SachView();
            while(rs.next()){
                sav.setMaSach(rs.getString(1));
                sav.setTenSach(rs.getString(2));
                sav.setTenTacGia(rs.getString(3));
                sav.setTenTheLoai(rs.getString(4));
                sav.setTenNXB(rs.getString(5));
                sav.setAnhDaiDien(rs.getString(6));
            }
            conn.close();
            return sav;
        } catch (Exception e) {
        }
        return null;
    }
}
