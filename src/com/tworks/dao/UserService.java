package com.tworks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import javax.swing.JOptionPane;

import com.tworks.domain.User;
import com.tworks.domain.User;
import com.tworks.utility.DBUtility;
import com.tworks.utility.SendEmail;

public class UserService {
	private static final AtomicInteger counter = new AtomicInteger();

	private Connection connection;
	String email = "", pin = "", USERNAME = "";

	public UserService() {
		connection = DBUtility.getConnection();
	}

	public int getUserCount() {
		int count = 0;
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement
					.executeQuery("select max(userid) as count from tblUser");
			while (rs.next()) {
				count = rs.getInt(1);
			}
			count++;
			System.out.println("-------------------------" + count);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	/*
	 * public void addUser(User user) { try {
	 * 
	 * PreparedStatement preparedStatement = connection .prepareStatement(
	 * "insert into tblUser(userid,firstname,lastname,email) values (?,?, ?, ? )"
	 * ); // Parameters start with 1 preparedStatement.setInt(1,
	 * user.getUserid()); preparedStatement.setString(2, user.getFirstName());
	 * preparedStatement.setString(3, user.getLastName());
	 * preparedStatement.setString(4, user.getEmail());
	 * preparedStatement.executeUpdate();
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } }
	 */

	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from tblUser where userid=?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public List<User> getAllAdminUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from admin_details");
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("USER_NAME"));
				user.setEmail(rs.getString("EMAIL_ID"));
				user.setPassword(rs.getString("M_PIN"));
				user.setGender(rs.getString("GENDER"));
				user.setDelete_flag(rs.getString("DELETE_FLAG"));
				user.setCreated_by(rs.getString("CREATED_BY"));

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}


	/*
	 * public void updateUser(User user) throws ParseException { try {
	 * PreparedStatement preparedStatement = connection
	 * .prepareStatement("update tblUser set lastname=?,email=?" +
	 * "where userid=?"); // Parameters start with 1
	 * preparedStatement.setString(1, user.getLastName());
	 * preparedStatement.setString(2, user.getEmail());
	 * preparedStatement.setInt(3, user.getUserid());
	 * preparedStatement.executeUpdate();
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } }
	 */

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from user_details");
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("USER_NAME"));
				user.setEmail(rs.getString("EMAIL_ID"));
				user.setPassword(rs.getString("M_PIN"));
				user.setGender(rs.getString("GENDER"));
				user.setDelete_flag(rs.getString("DELETE_FLAG"));

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	public List<User> getAllUserId(String id) {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			//ResultSet rs = statement.executeQuery("select * from user_details where EMAIL_ID=? ");
			String query = "select * from user_details where EMAIL_ID=?";

			PreparedStatement preparedStmt = connection.prepareStatement(query);
			preparedStmt.setString(1, id);

			ResultSet rs = preparedStmt.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUserName(rs.getString("USER_NAME"));
				user.setEmail(rs.getString("EMAIL_ID"));
				user.setPassword(rs.getString("M_PIN"));
				user.setGender(rs.getString("GENDER"));
				user.setDelete_flag(rs.getString("DELETE_FLAG"));
				user.setCreated_by(rs.getString("CREATED_BY"));

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	/*
	 * public User getUserById(int userId) { User user = new User(); try {
	 * PreparedStatement preparedStatement = connection.
	 * prepareStatement("select * from JobNotification where userid=?");
	 * preparedStatement.setInt(1, userId); ResultSet rs =
	 * preparedStatement.executeQuery();
	 * 
	 * if (rs.next()) { user.setId(rs.getInt("userid"));
	 * user.setTitle(rs.getString("")); user.setDescription(rs.getString(""));
	 * 
	 * } } catch (SQLException e) { e.printStackTrace(); } return user; }
	 */

	public boolean exists(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean validate(User user) {
		try {

			System.out.println(user.toString());
			System.err.println(user.toString());
			// int maxId=getUserCount();
			// user.setUserid(maxId);
			// String query =
			// " insert into user ( username, email,password,gender,delete_flag)"
			// + " values ( ?, ?,?,?,?)";
			String query = "SELECT EMAIL_ID, M_PIN FROM user_details where EMAIL_ID=? and M_PIN=?";

			PreparedStatement preparedStmt = connection.prepareStatement(query);
			preparedStmt.setString(1, user.getEmail());
			preparedStmt.setString(2, user.getPassword());

			ResultSet rs = preparedStmt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	public boolean getAdminvalidate(User user) {
		try {

			System.err.println(user.toString());
			// int maxId=getUserCount();
			// user.setUserid(maxId);
			// String query =
			// " insert into user ( username, email,password,gender,delete_flag)"
			// + " values ( ?, ?,?,?,?)";
			String query = "SELECT EMAIL_ID, M_PIN FROM admin_details where EMAIL_ID=? and M_PIN=?";

			PreparedStatement preparedStmt = connection.prepareStatement(query);
			preparedStmt.setString(1, user.getEmail());
			preparedStmt.setString(2, user.getPassword());

			ResultSet rs = preparedStmt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
	
	public void insertAdminNotificy(User user) {
		try {
			// int maxId=getUserCount();
			// user.setUserid(maxId);
			String query = " insert into admin_details ( USER_NAME, EMAIL_ID,M_PIN,GENDER,DELETE_FLAG,CREATED_BY)"
					+ " values ( ?, ?,?,?,?,?)";

			PreparedStatement preparedStmt = connection.prepareStatement(query);
			preparedStmt.setString(1, user.getUserName());
			preparedStmt.setString(2, user.getEmail());
			preparedStmt.setString(3, user.getPassword());
			preparedStmt.setString(4, user.getGender());
			preparedStmt.setString(5, user.getDelete_flag());
			preparedStmt.setString(6, user.getCreated_by());

			preparedStmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// execute the preparedstatement

	}


	public boolean insertNotificy(User user) {
		try {
			String queryvalid="";
			// int maxId=getUserCount();
			// user.setUserid(maxId);
			System.out.println(user.toString());
			if(user.getCreated_by().contains("tworkpvt@gmail.com")){
			queryvalid = "SELECT CREATED_BY FROM admin_details where CREATED_BY=?";
			PreparedStatement preparedStmt1 = connection.prepareStatement(queryvalid);
			preparedStmt1.setString(1, user.getCreated_by());
			}
			else{
				 queryvalid = "SELECT EMAIL_ID FROM user_details where EMAIL_ID=?";
				 PreparedStatement preparedStmt1 = connection.prepareStatement(queryvalid);
					preparedStmt1.setString(1, user.getEmail());
			}

			PreparedStatement preparedStmt1 = connection.prepareStatement(queryvalid);
			preparedStmt1.setString(1, user.getCreated_by());
			ResultSet rs = preparedStmt1.executeQuery();
			if (rs.next()) {
				String query = " insert into user_details ( USER_NAME, EMAIL_ID,M_PIN,GENDER,DELETE_FLAG,CREATED_BY)"
						+ " values ( ?, ?,?,?,?,?)";

				PreparedStatement preparedStmt = connection.prepareStatement(query);
				preparedStmt.setString(1, "user");
				preparedStmt.setString(2, user.getEmail());
				preparedStmt.setString(3, user.getPassword());
				preparedStmt.setString(4, user.getGender());
				preparedStmt.setString(5, user.getDelete_flag());
				preparedStmt.setString(6, user.getCreated_by());

				preparedStmt.execute();
				return true;
			} else {
				return false;
			}
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

		// execute the preparedstatement

	}

	public void admindata() {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * from job_details WHERE CREATED_BY IN (SELECT CREATE_BY from user_details WHERE CREATED_BY=?)");
			preparedStatement.setString(1, "a@gmail.com");
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				User user = new User();
				int id = rs.getInt("id");
				String data = rs.getString("data");
				String email = rs.getString("master_email");
				System.out.println(id);
				System.out.println(data);
				System.out.println(email);
			}

		} catch (Exception e) {
		}
	}
	
	
	public boolean sendAdminEmail(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from admin_details where EMAIL_ID=?");
			preparedStatement.setString(1, user.getEmail());
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				email = user.getEmail();
				if (email.equals(rs.getString("EMAIL_ID"))) {
					pin = rs.getString("M_PIN");
					USERNAME = rs.getString("USER_NAME");
					SendEmail sent = new SendEmail(USERNAME, email, pin);
					System.out.println("USERNAME" + USERNAME + "\nEMAIL"
							+ email + "\nPIN" + pin);
					sent.sentEmail();
				}
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}


	public boolean sendEmail(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from user_details where EMAIL_ID=?");
			preparedStatement.setString(1, user.getEmail());
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				email = user.getEmail();
				if (email.equals(rs.getString("EMAIL_ID"))) {
					pin = rs.getString("M_PIN");
					USERNAME = rs.getString("USER_NAME");
					SendEmail sent = new SendEmail(USERNAME, email, pin);
					System.out.println("USERNAME" + USERNAME + "\nEMAIL"
							+ email + "\nPIN" + pin);
					sent.sentEmail();
				}
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
