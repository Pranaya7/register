package com.ncit.registration.service;

import java.util.List;

import com.ncit.registration.model.Blog;


public interface BlogService {
	public void saveBlog(Blog blog);
	public List<Blog> listblog();

}
