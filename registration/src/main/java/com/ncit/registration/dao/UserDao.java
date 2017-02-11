package com.ncit.registration.dao;

import java.util.List;

import com.ncit.registration.model.User;

public interface UserDao {

	public void saveUser(User user);

	public List<User> listuser();

	public User getuser(int id);

	public void deleteUser(int id);

	public User getUserByUserNameAndPasswrd(String userName, String password);

	public User getuserByUserName(String userName);

}
