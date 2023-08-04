/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controll;

import dao.DAO;
import entity.Account;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class addDelete extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pname = req.getParameter("name");
        String pimage = req.getParameter("image");
        String pprice = req.getParameter("price");
        String ptitle = req.getParameter("title");
        String pdescription = req.getParameter("description");
        String pcategory = req.getParameter("category");
        HttpSession session = req.getSession();
        Account a = (Account) session.getAttribute("acc");
        int sid = a.getId();
        DAO pr = new DAO();
         pr.insertProduct(pname, pimage, pprice, ptitle, pdescription, pcategory, sid);
        
        
        
        req.getRequestDispatcher("ManagerProduct.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DAO pr = new DAO();
        pr.deleteProduct(id);
        
       req.getRequestDispatcher("ManagerProduct.jsp").forward(req, resp);
        
    }
    
}
