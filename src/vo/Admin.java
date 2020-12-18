package vo;

public class Admin {
    private String admin_account;
    private String admin_password;

    public Admin(String admin_account, String admin_password) {
        this.admin_account = admin_account;
        this.admin_password = admin_password;
    }

    public Admin() {
    }

    public String getAdmin_account() {
        return admin_account;
    }

    public void setAdmin_account(String admin_account) {
        this.admin_account = admin_account;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "admin_account='" + admin_account + '\'' +
                ", admin_password='" + admin_password + '\'' +
                '}';
    }
}
