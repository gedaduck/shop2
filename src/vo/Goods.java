package vo;

public class Goods {
    private int goods_id;
    private String goods_name;
    private String goods_img;
    private String goods_introduce;
    private int goods_category;
    private double price;
    private String businessman_account;

    public Goods(int goods_id, String goods_name, String goods_img, String goods_introduce, int goods_category, double price, String businessman_account) {
        this.goods_id = goods_id;
        this.goods_name = goods_name;
        this.goods_img = goods_img;
        this.goods_introduce = goods_introduce;
        this.goods_category = goods_category;
        this.price = price;
        this.businessman_account = businessman_account;
    }

    public Goods() {
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getGoods_img() {
        return goods_img;
    }

    public void setGoods_img(String goods_img) {
        this.goods_img = goods_img;
    }

    public String getGoods_introduce() {
        return goods_introduce;
    }

    public void setGoods_introduce(String goods_introduce) {
        this.goods_introduce = goods_introduce;
    }

    public int getGoods_category() {
        return goods_category;
    }

    public void setGoods_category(int goods_category) {
        this.goods_category = goods_category;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getBusinessman_account() {
        return businessman_account;
    }

    public void setBusinessman_account(String businessman_account) {
        this.businessman_account = businessman_account;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goods_id=" + goods_id +
                ", goods_name='" + goods_name + '\'' +
                ", goods_img='" + goods_img + '\'' +
                ", goods_introduce='" + goods_introduce + '\'' +
                ", goods_category=" + goods_category +
                ", price=" + price +
                ", businessman_account='" + businessman_account + '\'' +
                '}';
    }
}
