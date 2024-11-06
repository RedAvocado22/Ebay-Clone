package models;

public class Feedback {

    private int id;
    private String content;
    private String type;
    private Account buyer;
    private Account seller;

    public Feedback() {
    }

    public Feedback(int id, String content, String type, Account buyer, Account seller) {
        this.id = id;
        this.content = content;
        this.type = type;
        this.buyer = buyer;
        this.seller = seller;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
}
