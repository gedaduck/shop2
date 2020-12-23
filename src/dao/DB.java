package dao;

import java.sql.*;

public class DB {
	private Connection con;
	private Statement sta;
	private ResultSet rs;
	/********************��̬��������Ч��***********/
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * ������������
	 */
	
	public Connection getConnection(){
/****1433�����Լ���SQLserver�˿ں�(Ĭ����1433)*********/
/**************DatabaseName����Ҫ���ӵ����ݿ�����*********/
		String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
		try {
/**��һ��sa�����SQLserver�û���,�ڶ����Ǵ��û�������Ӧ������***/
			con = DriverManager.getConnection(url, "root", "123456");
			sta = con.createStatement();
			System.out.println("���ӳɹ�");
		} catch (SQLException e) {
			System.out.println("����ʧ��");
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
