/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.SachDAO;
import DAO.TheThuVienDAO;
import Model.GioHang;
import Model.Sach;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DucAnhTran
 */
public class ControllerThanhToan extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            Enumeration para = request.getParameterNames();
            HttpSession session = request.getSession();
            GioHang gh = (GioHang)session.getAttribute("giohang");
            
            String hoten = request.getParameter("name");
            String idthe = request.getParameter("idthe");
            gh.setIdThe(idthe);
            String sdt = request.getParameter("phone");
            //Insert thông tin độc giả và thông tin giỏ hàng của độc giả đó vào bảng Muon
            for(int i = 0; i< gh.soSach(); i++){
                new TheThuVienDAO().insertToMuon(idthe, gh.LaySach(i).getMaSach() , gh.LaySach(i).getSoluong());
            }
            
            //Quay lại trang shop.jsp
            List<Sach> s = new SachDAO().getListSach();           
            request.setAttribute("Sach", s);
            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/shop.jsp");
            dispatch.forward(request, response);
        }
        catch(Exception e){
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
        processRequest(request, response);
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
