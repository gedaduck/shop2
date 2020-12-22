package vo;

public class Businessman {
    private String businessman_account;
    private String businessman_password;
    private String businessman_name;
    private String businessman_address;
    private String businessman_telephone;
    private int store_id;
    private String store_name;

    public Businessman() {
    }

    public Businessman(String businessman_account, String businessman_password, String businessman_name, String businessman_address, String businessman_telephone, int store_id, String store_name) {
        this.businessman_account = businessman_account;
        this.businessman_password = businessman_password;
        this.businessman_name = businessman_name;
        this.businessman_address = businessman_address;
        this.businessman_telephone = businessman_telephone;
        this.store_id = store_id;
        this.store_name = store_name;
    }

    public String getBusinessman_account() {
        return businessman_account;
    }

    public void setBusinessman_account(String businessman_account) {
        this.businessman_account = businessman_account;
    }

    public String getBusinessman_password() {
        return businessman_password;
    }

    public void setBusinessman_password(String businessman_password) {
        this.businessman_password = businessman_password;
    }

    public String getBusinessman_name() {
        return businessman_name;
    }

    public void setBusinessman_name(String businessman_name) {
        this.businessman_name = businessman_name;
    }

    public String getBusinessman_address() {
        return businessman_address;
    }

    public void setBusinessman_address(String businessman_address) {
        this.businessman_address = businessman_address;
    }

    public String getBusinessman_telephone() {
        return businessman_telephone;
    }

    public void setBusinessman_telephone(String businessman_telephone) {
        this.businessman_telephone = businessman_telephone;
    }

    public int getStore_id() {
        return store_id;
    }

    public void setStore_id(int store_id) {
        this.store_id = store_id;
    }

    public String getStore_name() {
        return store_name;
    }

    public void setStore_name(String store_name) {
        this.store_name = store_name;
    }

    @Override
    public String toString() {
        return "Businessman{" +
                "businessman_account='" + businessman_account + '\'' +
                ", businessman_password='" + businessman_password + '\'' +
                ", businessman_name='" + businessman_name + '\'' +
                ", businessman_address='" + businessman_address + '\'' +
                ", businessman_telephone=" + businessman_telephone +
                ", store_id=" + store_id +
                ", store_name='" + store_name + '\'' +
                '}';
    }
}
