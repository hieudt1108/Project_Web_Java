/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Doan Trung Hieu
 */
public class Product {
    
    private int id;
    private String name;
    private int price;
    private int categoryID;
    private String shortdesc;
    private String stock;
    private String image;
    private int quantity;

    public Product() {
    }

    public Product(int id, String name, int price, int categoryID, String shortdesc, String stock, String image, int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.categoryID = categoryID;
        this.shortdesc = shortdesc;
        this.stock = stock;
        this.image = image;
        this.quantity = quantity;
    }
        public Product(int id, String name, int price, int categoryID, String shortdesc, String stock, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.categoryID = categoryID;
        this.shortdesc = shortdesc;
        this.stock = stock;
        this.image = image;
    }

 



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getShortdesc() {
        return shortdesc;
    }

    public void setShortdesc(String shortdesc) {
        this.shortdesc = shortdesc;
    }

   

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", price=" + price + ", categoryID=" + categoryID + ", shortdesc=" + shortdesc + ", stock=" + stock + ", image=" + image + ", quantity=" + quantity + '}';
    }

 
    
    
    
}
