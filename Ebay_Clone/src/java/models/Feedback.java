package models;

public class Feedback {

    private int id;
    private String content;
    private String type;
    private String status;
    private String buyer;
    private String seller;

    public Feedback() {
    }

    public Feedback(int id, String content, String type, String status, String buyer, String seller) {
        this.id = id;
        this.content = content;
        this.type = type;
        this.status = status;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getBuyer() {
        return buyer;
    }

    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }

    public String getSeller() {
        return seller;
    }

    public void setSeller(String seller) {
        this.seller = seller;
    }
}
