package com.ncit.registration.dao;

import java.util.List;

import com.ncit.registration.model.Blog;
import com.ncit.registration.model.User;

public interface BlogDao {
	public void saveBlog(Blog blog);
	public List<Blog> listblog();

}
