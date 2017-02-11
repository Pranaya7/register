package com.ncit.registration.service;

import java.util.List;

import com.ncit.registration.model.User;

public interface UserService {
	
	public void saveUser(User user);
	
	public List<User> listUser();
	
	public User getuser(int id);
	
	public void deleteUser(int id);
	
	public User getUserByUserNameAndPassword(String userName, String password);
	
	public User getUserByUserName(String userName);
	

}
