package com.tworks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import com.tworks.domain.JobNotify;
import com.tworks.domain.Roomies;
import com.tworks.domain.User;
import com.tworks.utility.DBUtility;


public class RoomiesService {
    private static final AtomicInteger counter = new AtomicInteger();

	
	private Connection connection;

	public RoomiesService() {
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
/*
	public void addUser(User user) {
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
	}*/
	
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

	public List<Roomies> getAllUsers(String created_by) {
		List<Roomies> roomiesList = new ArrayList<Roomies>();
		try {
			
			
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from room_details where CREATED_BY=?");
			preparedStatement.setString(1,created_by);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Roomies roomies = new Roomies();
				roomies.setId(rs.getInt("ID"));
				roomies.setTitle(rs.getString("TITLE"));
				roomies.setRoomDetails(rs.getString("DESCRIPTION"));
				
				Date CREATED_ON=rs.getTimestamp("CREATED_ON");  
				Date MODIFIED_ON=rs.getTimestamp("MODIFIED_ON");  
				roomies.setCreated_on(CREATED_ON);				
				roomies.setModified_on(MODIFIED_ON);
				roomiesList.add(roomies);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return roomiesList;
	}
	
	
	public List<JobNotify> getAllDataAdminByEmaiId(String _adminemail) {
		List<JobNotify> users = new ArrayList<JobNotify>();
		try {
			
			
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT * from room_details WHERE CREATED_BY IN (SELECT CREATED_BY from user_details WHERE CREATED_BY=?)");
			preparedStatement.setString(1,_adminemail);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				JobNotify user = new JobNotify();
				user.setId(rs.getInt("ID"));
				user.setTitle(rs.getString("title"));
				user.setDescription(rs.getString("Description"));
				/*user.setDescription(rs.getString("Description"));
                Timestamp ts=new Timestamp(System.currentTimeMillis());  

				Date CREATED_ON=rs.getTimestamp("CREATED_ON");  
				Date MODIFIED_ON=rs.getTimestamp("MODIFIED_ON");  

				user.setCreated_on(CREATED_ON);				
				user.setModified_on(MODIFIED_ON);				
				user.setCreated_by(rs.getString("CREATED_BY"));				
				user.setDelete_flag(rs.getString("DELETE_FLAG"));	*/			

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
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
    				Timestamp timestamp = new Timestamp(System.currentTimeMillis());

	        	String query = " insert into room_details (TITLE,DESCRIPTION,CREATED_ON,MODIFIED_ON,CREATED_BY)"
	      	          + " values (?,?,?,?,?)";

	           PreparedStatement preparedStmt = connection.prepareStatement(query);
				preparedStmt.setString (1, user.getTitle());
				preparedStmt.setString (2, user.getRoomDetails());
      	        preparedStmt.setTimestamp (3, timestamp);
				preparedStmt.setTimestamp (4, timestamp);
				preparedStmt.setString (5,user.getCreated_by());

				preparedStmt.execute();
	        
	        } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	

	        // execute the preparedstatement
	        
	        
	    }
	
	
	public void deleteRoomNotificy() {
	        try {
    	//int maxId=getUserCount();
    	//user.setUserid(maxId);
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());

    	String query = "delete from room_details where CREATED_ON <= DATE_SUB(curdate(), INTERVAL 7  DAY)";


      PreparedStatement preparedStmt = connection.prepareStatement(query);
		preparedStmt.execute();
    
    } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


    // execute the preparedstatement
    
    
}
	}



