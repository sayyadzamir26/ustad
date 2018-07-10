package com.tworks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import com.tworks.domain.JobNotify;
import com.tworks.domain.User;
import com.tworks.utility.DBUtility;


public class JobService {
    private static final AtomicInteger counter = new AtomicInteger();

	
	private Connection connection;

	public JobService() {
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

	/*public void addUser(User user) {
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

	public List<JobNotify> getAllUsers() {
		List<JobNotify> users = new ArrayList<JobNotify>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from JobNotification");
			while (rs.next()) {
				JobNotify user = new JobNotify();
				user.setId(rs.getInt("ID"));
				user.setTitle(rs.getString("title"));
				user.setDescription(rs.getString("Description"));				
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	public List<Faq> getAllFaq() {
		List<Faq> users = new ArrayList<Faq>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from faq");
			while (rs.next()) {
				Faq _faq = new Faq();
				_faq.setId(rs.getInt("id"));
				_faq.setQuestion(rs.getString("question"));
				_faq.setAnswer(rs.getString("answer"));
				_faq.setDelete_flag("delete_flag");
				users.add(_faq);
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
					prepareStatement("select * from JobNotification where userid=?");
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

	public boolean exists(JobNotify user) {
		// TODO Auto-generated method stub
		return false;
	}

	public void insertNotificy(JobNotify user) {
      	        try {
	        	//int maxId=getUserCount();
	        	//user.setUserid(maxId);
	        	String query = " insert into JobNotification ( title, Description,CREATED_BY,DELETE_FLAG)"
	      	          + " values ( ?, ?,?,?)";

	           PreparedStatement preparedStmt = connection.prepareStatement(query);
	   	        preparedStmt.setString (1, user.getTitle());
				preparedStmt.setString (2, user.getDescription());
	   	        preparedStmt.setString (3, user.getCreated_by());
	   	        preparedStmt.setString(4,"F");

				preparedStmt.execute();
	        
	        } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	

	        // execute the preparedstatement
	        
	        
	    }
	
	
	public void deleteJobNotificy() {
        try {
        	
        	
	//int maxId=getUserCount();
	//user.setUserid(maxId);
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());

	String query = "delete from job_details where CREATED_ON <= DATE_SUB(curdate(), INTERVAL 7  DAY)";


  PreparedStatement preparedStmt = connection.prepareStatement(query);
	preparedStmt.execute();

} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


// execute the preparedstatement


}
	}



