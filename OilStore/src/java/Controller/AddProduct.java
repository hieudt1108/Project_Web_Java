/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.dao;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Doan Trung Hieu
 */
public class AddProduct extends BaseAuthController {


    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("AddProduct.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dao dao = new dao();
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        int category = Integer.parseInt(request.getParameter("category"));
        String detail = request.getParameter("detail");
        String stock = request.getParameter("stock");
        String img = request.getParameter("img");
        Product p = new Product();
        p.setId(id);
        p.setName(name);
        p.setPrice(price);
        p.setCategoryID(category);
        p.setShortdesc(detail);
        p.setStock(stock);
        p.setImage(img);
        dao.createProduct(p);
        response.sendRedirect("manage");
    }

}
