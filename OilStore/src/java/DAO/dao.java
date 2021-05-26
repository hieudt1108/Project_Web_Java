/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Model.Account;
import Model.Category;
import Model.Checkout;
import Model.Contact;
import Model.Product;
import com.oracle.jrockit.jfr.Producer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Doan Trung Hieu
 */
public class dao extends Context.DBContext {

    public void sendContact(String name, String email, String subject, String message) {
        boolean check = false;
        try {
            String sql = "INSERT INTO dbo.Contact (name, email, subject, message) VALUES (?, ?, ?, ?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, email);
            st.setString(3, subject);
            st.setString(4, message);
            check = st.executeUpdate() > 0;
        } catch (Exception e) {

        }

    }

    public void createOrder(String name, String phone, String email, String contry, String add, String city, String post, String mes, int total) {
        boolean isOrdered = false;
        try {
            String sql = "INSERT INTO dbo.Orders (fullname, phonenumber, email, country, address, city, postcode, message, total) VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, phone);
            st.setString(3, email);
            st.setString(4, contry);
            st.setString(5, add);
            st.setString(6, city);
            st.setString(7, post);
            st.setString(8, mes);
            st.setInt(9, total);
            isOrdered = st.executeUpdate() > 0;
        } catch (Exception e) {

        }

    }

    public ArrayList<Account> getAllAccounts() {
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String sql = "SELECT * FROM dbo.Account";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                accounts.add(new Account(rs.getString(1), rs.getString(3), rs.getString(2), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return accounts;
    }

    public Account getAccountByID(String username) {
        Account account = null;
        try {
            String sql = "SELECT * FROM dbo.Account WHERE username = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                account = new Account();
                account.setUsername(rs.getString(1));
                account.setFullname(rs.getString(2));
                account.setPassword(rs.getString(3));
                account.setEmail(rs.getString(4));
                account.setPhonenumber(rs.getString(5));
                account.setAddress(rs.getString(6));
            }
        } catch (Exception e) {

        }
        return account;
    }

    public Account Login(String username, String password) {
        Account account = null;
        try {
            String sql = "SELECT * FROM dbo.Account WHERE username = ? AND password = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                account = new Account();
                account.setUsername(rs.getString(1));
                account.setFullname(rs.getString(2));
                account.setPassword(rs.getString(3));
                account.setEmail(rs.getString(4));
                account.setPhonenumber(rs.getString(5));
                account.setAddress(rs.getString(6));
                account.setAdmin(rs.getString(7));
            }
        } catch (Exception e) {

        }
        return account;
    }

    public void register(String user, String name, String email, String add, String phone, String pass) {
        boolean isCreated = false;
        try {
            String sql = "INSERT INTO dbo.Account(username, fullname, password, email, phonenumber, address,admin) VALUES (?, ?, ?, ?, ?, ?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, name);
            st.setString(3, pass);
            st.setString(4, email);
            st.setString(5, phone);
            st.setString(6, add);
            st.setString(7, "n");
            isCreated = st.executeUpdate() > 0;
        } catch (Exception e) {

        }

    }

    public void updateAccount(String user, String name, String email, String p, String a) {
        boolean isUpdated = false;
        try {
            String sql = "UPDATE dbo.Account SET fullname = ?, email = ?, phonenumber = ?, address = ? WHERE username = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, email);
            st.setString(3, p);
            st.setString(4, a);
            st.setString(5, user);
            isUpdated = st.executeUpdate() > 0;
        } catch (Exception e) {

        }

    }

    Connection conn = null;//mo ket noi 
    PreparedStatement ps = null;//nem cau lenh query
    ResultSet rs = null; //nhan ket qua tra ve

    public void updateProduct(int id, String name, int price, int cate, String detail, String stock, String img) {
        boolean isUpdated = false;
        try {
            String sql = "UPDATE dbo.Products SET productName = ?, price = ?, categoryID = ?, detail = ?, stock = ?, img = ? WHERE productID = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, price);
            st.setInt(3, cate);
            st.setString(4, detail);
            st.setString(5, stock);
            st.setString(6, img);
            st.setInt(7, id);
            isUpdated = st.executeUpdate() > 0;
            st.executeUpdate();
        } catch (Exception e) {

        }

    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM Products";
        try {

            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }

        } catch (Exception e) {

        }
        return products;
    }

    public void removeProduct(int id) {
        try {
            String sql = "DELETE FROM dbo.Products WHERE productID =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void createProduct(Product p) {
        boolean isCreated = false;
        try {
            String sql = "INSERT INTO dbo.Products (productID, productName, price, categoryID, detail, stock, img) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getId());
            st.setString(2, p.getName());
            st.setInt(3, p.getPrice());
            st.setInt(4, p.getCategoryID());
            st.setString(5, p.getShortdesc());
            st.setString(6, p.getStock());
            st.setString(7, p.getImage());
            isCreated = st.executeUpdate() > 0;
        } catch (Exception e) {

        }

    }

    public Product getProductByID(int id) {
        Product product = null;
        try {
            String sql = "SELECT * FROM dbo.Products WHERE productID = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getInt(3));
                product.setCategoryID(rs.getInt(4));
                product.setShortdesc(rs.getString(5));
                product.setStock(rs.getString(6));
                product.setImage(rs.getString(7));
            }
        } catch (Exception e) {

        }
        return product;
    }

    public List<Product> getProductsByCategory(int categoryID) {
        List<Product> products = new ArrayList<>();

        String sql = "SELECT * FROM dbo.Products WHERE categoryID = ?";
        try {

            ps = connection.prepareStatement(sql);
            ps.setInt(1, categoryID);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }

        } catch (Exception e) {

        }
        return products;
    }

    public List<Category> getCategory() {
        List<Category> category = new ArrayList<>();

        String sql = "SELECT * FROM dbo.Category";
        try {

            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                category.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {

        }
        return category;
    }

    public List<Product> getLatestProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT TOP 6 * FROM Products ORDER BY productID DESC";
        try {

            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return products;
    }

    public List<Product> getFeatProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT TOP 6 * FROM Products \n"
                + "where stock = 'Out of Stock'";
        try {

            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return products;
    }

    public List<Product> searchByName(String text) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM dbo.Products WHERE productName LIKE ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {

        }
        return products;
    }

    public static void main(String[] args) {
        dao d = new dao();
        List<Product> l = d.getAllProducts();
        for (Product product : l) {
            System.out.println(product.toString());
        }

//        Product p = d.getProductBycID(1);
    }

}
