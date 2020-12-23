package vo;

import java.util.Date;

public class Orders {
    private int order_id;
    private String user_account;
    private String goods_name;
    private int goods_id;
    private int goods_num;
    private double price;
    private String order_date;
    private String order_send;
    private String order_get;
    private String goods_comment;
    private int businessman_id;

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

    public String getGoods_comment() {
        return goods_comment;
    }

    public void setGoods_comment(String goods_comment) {
        this.goods_comment = goods_comment;
    }

    public int getBusinessman_id() {
        return businessman_id;
    }

    public void setBusinessman_id(int businessman_id) {
        this.businessman_id = businessman_id;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "order_id=" + order_id +
                ", user_account='" + user_account + '\'' +
                ", goods_name='" + goods_name + '\'' +
                ", goods_id=" + goods_id +
                ", goods_num=" + goods_num +
                ", price=" + price +
                ", order_date='" + order_date + '\'' +
                ", order_send='" + order_send + '\'' +
                ", order_get='" + order_get + '\'' +
                ", goods_comment='" + goods_comment + '\'' +
                ", businessman_id=" + businessman_id +
                '}';
    }


}
