package com.ncit.registration.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ncit.registration.dao.UserDao;
import com.ncit.registration.model.User;
import com.ncit.registration.service.UserService;
@Service
public class UserServiceImpl implements UserService {
@Autowired
private UserDao userDao;

	@Override
	@Transactional
	public void saveUser(User user) {
		userDao.saveUser(user);
		
	}

	
	@Override
	@Transactional(readOnly = true)
	public List<User> listUser() {
		return  userDao.listuser();
	}

	@Override
	@Transactional( readOnly = true)
	public User getuser(int id) {
	
		return userDao.getuser(id);
	}

	@Override
	@Transactional
	public void deleteUser(int id) {
		userDao.deleteUser(id);
		
		
	}

	@Override
	@Transactional(readOnly =true)
	public User getUserByUserNameAndPassword(String userName, String password) {
		
		return userDao.getUserByUserNameAndPasswrd(userName, password);
			
		}
	

	@Override
	@Transactional(readOnly = true)
	public User getUserByUserName(String userName) {
		return userDao.getuserByUserName(userName);
	}

}
