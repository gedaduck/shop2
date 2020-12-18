package dao.Impl;

import dao.JDBCUtil;
import dao.UserDao;
import vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserImpl implements UserDao {
    @Override
    public User UserLogin(String user_account, String user_password) {
        User user = new User();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM user where user_account=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user_account);
            res = preparedStatement.executeQuery();
            if (res.next() && user_password.equals(res.getString("password"))) {
                System.out.println("登陆成功！");
                user.setUser_account(res.getString("user_account"));
                user.setUser_name(res.getString("user_name"));
                user.setAddress(res.getString("address"));
                user.setId_card(res.getString("id_card"));
                user.setPassword(res.getString("password"));
                user.setTelephone(res.getInt("telephone"));
                return user;
            } else {
                System.out.println("登陆失败！");
                return null;
            }

//            while (res.next()){
//                if(user_password.equals(res.getString("password"))){
//                    System.out.println("登陆成功！");
//                    user.setUser_account(res.getString("user_account"));
//                    user.setUser_name(res.getString("user_name"));
//                    user.setAddress(res.getString("address"));
//                    user.setId_card(res.getString("id_card"));
//                    user.setPassword(res.getString("password"));
//                    user.setTelephone(res.getInt("telephone"));
//                }
//                else
//                    System.out.println("登陆失败！");
//            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        return null;
    }




    @Override
    public User UserRegist(String user_account, String user_password, String user_name, String address, int telephone, String id_card) {
        User user=new User();
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="INSERT INTO user (user_account,password,user_name,address,telephone,id_card) values (?,?,?,?,?,?)";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,user_account);
            preparedStatement.setString(2,user_password);
            preparedStatement.setString(3,user_name);
            preparedStatement.setString(4,address);
            preparedStatement.setInt(5,telephone);
            preparedStatement.setString(6,id_card);
            if(preparedStatement.executeUpdate()==1){
                System.out.println("注册成功");
                user.setUser_account(user_account);
                user.setPassword(user_password);
                user.setUser_name(user_name);
                user.setAddress(address);
                user.setTelephone(telephone);
                user.setId_card(id_card);
            }

            else System.out.println("注册失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public int UserForgetPwd(String user_account, String user_name, String new_password) {
        Connection connection=null;
        Connection connection1=null;
        PreparedStatement preparedStatement=null;
        PreparedStatement preparedStatement1=null;
        ResultSet res=null;
        int res1=0;
        try{
            connection= JDBCUtil.getConnection();
            connection1= JDBCUtil.getConnection();
            String sql="select user_name from user where user_account=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,user_account);
            res=preparedStatement.executeQuery();
            if(res.next()&&res.getString("user_name").equals(user_name)){
                String sql1="update user set password=? where user_account= ?";
                preparedStatement1=connection1.prepareStatement(sql1);
                preparedStatement1.setString(1,new_password);
                preparedStatement1.setString(2,user_account);
                res1=preparedStatement1.executeUpdate();
                JDBCUtil.closeConnection(connection);
                JDBCUtil.closeConnection(connection1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res1;
    }
}
