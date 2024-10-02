/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author ASUS
 */
public class ProductsToCategories {
    private int idProduct;
    private int idCategories;

    // Getters and Setters

    public ProductsToCategories() {
    }

    public ProductsToCategories(int idProduct, int idCategories) {
        this.idProduct = idProduct;
        this.idCategories = idCategories;
    }
    
    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdCategories() {
        return idCategories;
    }

    public void setIdCategories(int idCategories) {
        this.idCategories = idCategories;
    }
}

