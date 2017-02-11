package com.ncit.registration.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ncit.registration.dao.BlogDao;
import com.ncit.registration.model.Blog;
import com.ncit.registration.model.User;
import com.ncit.registration.util.HibernateUtil;

@Repository
public class BlogDaoImpl implements BlogDao{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public void saveBlog(Blog blog) {
		HibernateUtil.getSession(sessionFactory).merge(blog);
		
	}

	@Override
	public List<Blog> listblog() {
		return HibernateUtil.getSession(sessionFactory)
				.createCriteria(Blog.class).list();
	}

}
