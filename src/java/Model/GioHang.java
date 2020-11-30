/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author DucAnhTran
 */
import DAO.SachDAO;
import java.util.ArrayList;

public class GioHang {

    private String idThe;
    private ArrayList<Sach> giohang;

    public GioHang() {
        giohang = new ArrayList<Sach>();
    }

    public String getIdThe() {
        return idThe;
    }

    public void setIdThe(String idThe) {
        this.idThe = idThe;
    }
    public void ThemSach(Sach s) {
        if(!giohang.isEmpty()){
            for(int i = 0; i < giohang.size(); i++){
                if (giohang.get(i).getMaSach().equals(s.getMaSach())) {
                    s = giohang.get(i);
                    s.setSoluong(s.getSoluong()+1);
                    return;
                }            
            }           
        }
        s.setSoluong(1);
        giohang.add(s);
        
    }
    public Sach LaySach(int i) {
        if (i < 0 || i > giohang.size() - 1) {
            return null;
        }
        return giohang.get(i);
    }
    public ArrayList<Sach> getGiohang() {
        return giohang;
    }
    public void XoaSach(String id_sach) {
        giohang.removeIf(x -> x.getMaSach().equals(id_sach));
    }
    public int soSach() {
        return giohang.size();
    }
}
