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
public class TaiKhoan {
    private int maTaiKhoan;
    private String tenDangNhap;
    private String matKhau;
    public TaiKhoan(){};

    public TaiKhoan(String TenDangNhap, String MatKhau, int MaTaiKhoan) {
        this.maTaiKhoan = MaTaiKhoan;
        this.tenDangNhap = TenDangNhap;
        this.matKhau = MatKhau;
    }

    public int getMaTaiKhoan() {
        return maTaiKhoan;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMaTaiKhoan(int MaTaiKhoan) {
        this.maTaiKhoan = MaTaiKhoan;
    }

    public void setTenDangNhap(String TenDangNhap) {
        this.tenDangNhap = TenDangNhap;
    }

    public void setMatKhau(String MatKhau) {
        this.matKhau = MatKhau;
    }

    
}
