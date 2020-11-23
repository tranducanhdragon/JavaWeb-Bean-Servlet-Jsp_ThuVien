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

    private ArrayList<Sach> giohang;

    public GioHang() {
        giohang = new ArrayList<Sach>();
    }
    public void ThemSach(Sach s) {

        if (giohang.contains(s)) {

            s = giohang.get(giohang.indexOf(s));

            s.setSoluong(s.getSoluong() + s.getSoluong());

        } else {
            giohang.add(s);
        }

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
