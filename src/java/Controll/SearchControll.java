/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controll;

import dao.DAO;
import entity.Category;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Admin
 */
public class SearchControll extends HttpServlet{
    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        // b1:get data from dao
        // b1:get data from dao
        String txtSearch = req.getParameter("txt");
        req.setCharacterEncoding("UTF-8");
        DAO dao = new DAO();
        List<Product> list = dao.searchByName(txtSearch);
        if (list.isEmpty()) {
            req.getRequestDispatcher("Notfound.jsp").forward(req, resp);
        } else {
        List<Category> listC = dao.getAllCategory();
        Product last = dao.getLast();
          req.setAttribute("listP", list);
           req.setAttribute("listCC", listC);
          req.setAttribute("p", last);
          req.setAttribute("txtS", txtSearch);
          req.getRequestDispatcher("Home.jsp").forward(req, resp);
    }
}
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        req.getRequestDispatcher("Home.jsp").forward(req, resp);
    }
    
}
        
    

