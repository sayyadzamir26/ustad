

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

import com.tworks.domain.JobNotify;
import com.tworks.domain.Roomies;
import com.tworks.domain.Upload;
import com.tworks.domain.User;
import com.tworks.utility.DBUtility;


public class UploadService {
    private static final AtomicInteger counter = new AtomicInteger();

	
	private Connection connection;

	public UploadService() {
		connection = DBUtility.getConnection();
	}
	
	public int getUserCount(){
		int count=0;
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select max(userid) as count from tblUser");	
			while (rs.next()) {
				count=rs.getInt(1);
			}
			count++;
			System.out.println("-------------------------"+count);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

/*	public void addUser(User user) {
		try {
			
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into tblUser(userid,firstname,lastname,email) values (?,?, ?, ? )");
			// Parameters start with 1
			preparedStatement.setInt(1, user.getUserid());
			preparedStatement.setString(2, user.getFirstName());
			preparedStatement.setString(3, user.getLastName());			
			preparedStatement.setString(4, user.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
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
	
	/*public void updateUser(User user) throws ParseException {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update tblUser set lastname=?,email=?" +
							"where userid=?");
			// Parameters start with 1			
			preparedStatement.setString(1, user.getLastName());
			preparedStatement.setString(2, user.getEmail());			
			preparedStatement.setInt(3, user.getUserid());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}*/

	public List<Upload> getAllUsers() {
		List<Upload> uploadList = new ArrayList<Upload>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from upload");
			while (rs.next()) {
				Upload _upload = new Upload();
				_upload.setId(rs.getInt("ID"));
				_upload.setResource(rs.getString("resources"));
				_upload.setDelete_flag(rs.getString("delet_flag"));
				uploadList.add(_upload);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return uploadList;
	}
	
	public JobNotify getUserById(int userId) {
		JobNotify user = new JobNotify();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from Roomies where userid=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setId(rs.getInt("userid"));
				user.setTitle(rs.getString(""));
				user.setDescription(rs.getString(""));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public boolean exists(Roomies user) {
		// TODO Auto-generated method stub
		return false;
	}

	public void insertNotificy(Roomies user) {
      	        try {
	        	//int maxId=getUserCount();
	        	//user.setUserid(maxId);
	        	String query = " insert into Roomies (roomiesDetails)"
	      	          + " values (?)";

	           PreparedStatement preparedStmt = connection.prepareStatement(query);
				preparedStmt.setString (1, user.getRoomDetails());
				preparedStmt.execute();
	        
	        } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	

	        // execute the preparedstatement
	        
	        
	    }
	}



