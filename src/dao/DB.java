package dao;

import java.sql.*;

public class DB {
    private Connection con;
    private Statement sta;
    private ResultSet rs;
    /********************静态块可以提高效率***********/
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    /**
     * 加载驱动程序
     */

    public Connection getConnection(){
/****1433是你自己的SQLserver端口号(默认是1433)*********/
/**************DatabaseName是你要连接的数据库名称*********/
        String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
        try {
/**第一个sa是你的SQLserver用户名,第二个是此用户名所对应的密码***/
            con = DriverManager.getConnection(url, "root", "123456");
            sta = con.createStatement();
            System.out.println("连接成功");
        } catch (SQLException e) {
            System.out.println("连接失败");
            e.printStackTrace();
        }

        return con;
    }

    /*public DBManager() {
        List<Connection> list = new ArrayList<Connection>();
        for (int i = 0; i < 5; i++) {
            list.add(this.getConnection());
        }
        this.con = list.get(0);
    }*/
    public int update(String sql){
        int row = -1;
        con = getConnection();
        try {
            row = sta.executeUpdate(sql);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally{
            this.close();
        }
        return row;
    }

    public ResultSet query(String sql){
        con = getConnection();
        try {
            rs = sta.executeQuery(sql);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rs;
    }

    public void close(){
        try {
            if (rs != null) {
                rs.close();
                rs = null;
            }
            if (sta != null) {
                sta.close();
                sta = null;
            }
            if (con != null) {
                con.close();
                con = null;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
