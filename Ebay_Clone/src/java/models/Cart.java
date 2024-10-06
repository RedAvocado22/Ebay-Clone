package models;

import java.util.List;

public class Cart {

    private int id;
    private List<CartItem> items;

    public Cart() {
    }

    public Cart(int id, List<CartItem> items) {
        this.id = id;
        this.items = items;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {
        this.items = items;
    }

}
