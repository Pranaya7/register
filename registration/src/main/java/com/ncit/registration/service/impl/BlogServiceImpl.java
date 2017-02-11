package com.ncit.registration.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ncit.registration.dao.BlogDao;
import com.ncit.registration.model.Blog;
import com.ncit.registration.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService{
@Autowired BlogDao blogDao;
	@Override
	@Transactional
	public void saveBlog(Blog blog) {
		blogDao.saveBlog(blog);
				
	}

	@Override
	@Transactional(readOnly = true)
	public List<Blog> listblog() {
		return blogDao.listblog();
		
	}

}
