package models;

import java.util.List;

public class Order {

    private int id;
    private double total;
    private Account buyer;
    private Account seller;
    private String status;
    private List<OrderItem> items;

    public Order() {
    }

    public Order(int id, double total, Account buyer, Account seller, String status, List<OrderItem> orders) {
        this.id = id;
        this.total = total;
        this.buyer = buyer;
        this.seller = seller;
        this.status = status;
        this.items = orders;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Account getBuyer() {
        return buyer;
    }

    public void setBuyer(Account buyer) {
        this.buyer = buyer;
    }

    public Account getSeller() {
        return seller;
    }

    public void setSeller(Account seller) {
        this.seller = seller;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<OrderItem> getOrders() {
        return items;
    }

    public void setOrders(List<OrderItem> orders) {
        this.items = orders;
    }
}
