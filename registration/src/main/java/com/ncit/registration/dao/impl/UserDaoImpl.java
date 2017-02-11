package com.ncit.registration.dao.impl;

import java.util.List;import javax.jws.soap.SOAPBinding.Use;
import javax.persistence.Id;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ncit.registration.dao.UserDao;
import com.ncit.registration.model.User;
import com.ncit.registration.util.HibernateUtil;
@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUser(User user) {
		HibernateUtil.getSession(sessionFactory).merge(user);
		
	}

	@Override
	public List<User> listuser() {
		return HibernateUtil.getSession(sessionFactory)
				.createCriteria(User.class).list();
	}

	@Override
	public User getuser(int id) {
		return(User)HibernateUtil.getSession(sessionFactory).get(User.class, id);
	}

	@Override
	public void deleteUser(int id) {
		User user = getuser(id);
			if(user!= null)
				HibernateUtil.getSession(sessionFactory).delete(user);
		}
		
	

	@Override
	public User getUserByUserNameAndPasswrd(String userName, String password) {
		Criteria criteria= HibernateUtil.getSession(sessionFactory)
				.createCriteria(User.class)
				.add(Restrictions.eq("userName", userName))
				.add(Restrictions.eq("password", password));
		return(User) criteria.uniqueResult();
	}

	@Override
	public User getuserByUserName(String userName) {
		Criteria criteria = HibernateUtil.getSession(sessionFactory)
				.createCriteria(User.class)
				.add(Restrictions.eq("userName", userName));
		return(User) criteria.uniqueResult();
	}
	
}
