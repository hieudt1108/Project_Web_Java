/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.dao;
import Model.Account;
import Model.Checkout;
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
public class CheckoutController extends BaseAuthController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account) request.getSession().getAttribute("account");
        request.getRequestDispatcher("Checkout.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        dao cdao = new dao();
        Account account = (Account) request.getSession().getAttribute("account");
        String f = request.getParameter("name");
        String n = request.getParameter("number");
        String e = request.getParameter("email");
        String a= request.getParameter("address");
        String c = request.getParameter("country");
        String city = request.getParameter("city");
        String p = request.getParameter("zip");
        String m = request.getParameter("message");
        int total = Integer.parseInt(request.getParameter("total"));
        cdao.createOrder(f,n,e,a,c,city,p,m,total);
        account.getProducts().clear();
        response.sendRedirect("home");

    }

}
