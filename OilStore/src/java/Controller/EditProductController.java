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
public class EditProductController extends BaseAuthController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        dao dao = new dao();
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = dao.getProductByID(id);
        request.setAttribute("productForEdit", product);
        request.getRequestDispatcher("EditProduct.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        dao dao = new dao();
        int id = Integer.parseInt(request.getParameter("id"));
        String n = request.getParameter("name");
        int p = Integer.parseInt(request.getParameter("price"));
        int c= Integer.parseInt(request.getParameter("category"));
        String d = request.getParameter("detail");
        String s = request.getParameter("stock");
        String i = request.getParameter("img");

        dao.updateProduct(id,n,p,c,d,s,i);
        response.sendRedirect("manage");
    }

}
