/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controll;

import dao.DAO;
import entity.Account;
import entity.Category;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class SingupControll extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String user = req.getParameter("user");
        String pass = req.getParameter("pass");
        String re_pass = req.getParameter("repass");
        if (!pass.equals(re_pass)) {
            req.getRequestDispatcher("Pass.jsp").forward(req, resp);

        } else {
            DAO dao = new DAO();
            Account a = dao.checkAccountExist(user);
            if (a == null) {
                try {
                    dao.singup(user, pass);
                } catch (Exception ex) {
                    Logger.getLogger(SingupControll.class.getName()).log(Level.SEVERE, null, ex);
                }
                List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        Product last = dao.getLast();
         req.setAttribute("listP", list);
          req.setAttribute("listCC", listC);
          req.setAttribute("p", last);
            req.getRequestDispatcher("Home.jsp").forward(req, resp);
//                resp.sendRedirect("Home.jsp");
            } else {
                resp.sendRedirect("Login.jsp");

            }
        }
    }

        @Override
        protected void doGet
        (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
}
