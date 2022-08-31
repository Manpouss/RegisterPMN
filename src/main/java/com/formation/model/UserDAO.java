package com.formation.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.formation.classes.User;
import com.formation.services.Database;

public class UserDAO {
	public static ResultSet result;
	public static PreparedStatement ps;
	
	public UserDAO() {}
	
	public void save(User user) {
		
		try {
			
			if(user.getId() != 0) {
				ps = Database.connexion.prepareStatement(
						"UPDATE login set username=? ,password=?  WHERE id=?");
				ps.setString(1,user.getUsername());
				ps.setString(2,user.getPassword());
				ps.setInt(3,user.getId());
				ps.executeUpdate();
			}else {
				ps  = Database.connexion.prepareStatement(
						"INSERT INTO login (username,password) VALUES(?,?)");
				ps.setString(1,user.getUsername());
				ps.setString(2,user.getPassword());
	            ps.executeUpdate();
			}
			System.out.println("SAVED OK");
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	System.out.println("SAVED NO");
        }
	
	}

	public User getById(int id) {
		try {
			ps  = Database.connexion.prepareStatement(
					"SELECT * FROM login WHERE id=?");
			ps.setInt(1,id);
			result =ps.executeQuery();
			
			User user = new User();
			if(result.next()) {
				user.setId(result.getInt( "id" ));
				user.setUsername(result.getString( "username" ));
				user.setPassword(result.getString( "password" ));
			}
			return user;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	
	public ArrayList<User> getAll() {
		ArrayList<User> users = new ArrayList<>();
		try {
			
			ps  = Database.connexion.prepareStatement("SELECT * FROM login");
			result=ps.executeQuery();

			while(result.next()) {
				User user = new User();
				user.setId(result.getInt( "id" ));
				user.setUsername(result.getString( "username" ));
				user.setPassword(result.getString( "password" ));
				users.add(user);
			}
			return users;
			
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
	
	public User getByUsername(String username) {
		try {
			
			ps  = Database.connexion.prepareStatement(
					"SELECT * FROM login WHERE username=?");
			ps.setString(1,username);
			
			result =ps.executeQuery();
			
			User user = new User();
			if(result.next()) {
				user.setId(result.getInt( "id" ));
				user.setUsername(result.getString( "username" ));
				user.setPassword(result.getString( "password" ));
			}
			return user;
			
		} catch (Exception ex) {
	    	ex.printStackTrace();
	    	return null;
	    }
	}
	
	public boolean usernameExist(String username) {
		boolean userExist = false;
		try {
			ps  = Database.connexion.prepareStatement("SELECT * FROM login WHERE username= ?");
			ps.setString(1,username);
			result=ps.executeQuery();
			if(result.next()) {
				userExist = true;
			}
		}catch (Exception ex) {
	        ex.printStackTrace();
	    }
		return userExist;
	}
	
	public User connexion(String username,String mdp) {
		try {
		
				ps = Database.connexion.prepareStatement("SELECT * FROM login WHERE username=? AND password=?");
				ps.setString(1,username);
				ps.setString(2,mdp);
				result =ps.executeQuery();
				User user = new User();
				if(result.next()) {
					user.setId(result.getInt( "id" ));
					user.setUsername(result.getString( "username" ));
					user.setPassword(result.getString( "password" ));
					return user;
				}else {
					return null;
				}
		} catch (Exception ex) {
        	ex.printStackTrace();
        	return null;
        }
	}
}
