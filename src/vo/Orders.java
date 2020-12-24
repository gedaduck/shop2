package vo;

import java.util.Date;

public class Orders {
    private int order_id;
    private String user_account;
    private int goods_id;
    private int goods_num;
    private double price;
    private String goods_name;
    private String order_date;
    private String order_send;
    private String order_get;
    private String order_comment;
    private String businessman_account;
    private String goods_img;

    public Orders() {
    }

    public String getGoods_img() {
        return goods_img;
    }

    public void setGoods_img(String goods_img) {
        this.goods_img = goods_img;
    }

    public Orders(int order_id, String user_account, int goods_id, int goods_num, double price, String goods_name, String order_date, String order_send, String order_get, String order_comment, String businessman_account) {
        this.order_id = order_id;
        this.user_account = user_account;
        this.goods_id = goods_id;
        this.goods_num = goods_num;
        this.price = price;
        this.goods_name = goods_name;
        this.order_date = order_date;
        this.order_send = order_send;
        this.order_get = order_get;
        this.order_comment = order_comment;
        this.businessman_account = businessman_account;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getGoods_num() {
        return goods_num;
    }

    public void setGoods_num(int goods_num) {
        this.goods_num = goods_num;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public String getOrder_send() {
        return order_send;
    }

    public void setOrder_send(String order_send) {
        this.order_send = order_send;
    }

    public String getOrder_get() {
        return order_get;
    }

    public void setOrder_get(String order_get) {
        this.order_get = order_get;
    }

    public String getOrder_comment() {
        return order_comment;
    }

    public void setOrder_comment(String order_comment) {
        this.order_comment = order_comment;
    }

    public String getBusinessman_account() {
        return businessman_account;
    }

    public void setBusinessman_account(String businessman_account) {
        this.businessman_account = businessman_account;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "order_id=" + order_id +
                ", user_account='" + user_account + '\'' +
                ", goods_id=" + goods_id +
                ", goods_num=" + goods_num +
                ", price=" + price +
                ", goods_name='" + goods_name + '\'' +
                ", order_date=" + order_date +
                ", order_send='" + order_send + '\'' +
                ", order_get='" + order_get + '\'' +
                ", order_comment='" + order_comment + '\'' +
                ", businessman_account='" + businessman_account + '\'' +
                '}';
    }
}
