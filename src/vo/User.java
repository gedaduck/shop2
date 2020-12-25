package vo;

public class User {
    private String user_account;
    private String password;
    private String user_name;
    private String address;
    private String telephone;
    private String id_card;
    private String e_mail;

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User() {

    }


    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_account='" + user_account + '\'' +
                ", password='" + password + '\'' +
                ", user_name='" + user_name + '\'' +
                ", address='" + address + '\'' +
                ", telephone=" + telephone +
                ", id_card='" + id_card + '\'' +
                '}';
    }
}
