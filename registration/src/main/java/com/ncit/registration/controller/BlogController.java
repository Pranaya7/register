package com.ncit.registration.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ncit.registration.model.Blog;
import com.ncit.registration.service.BlogService;

@Controller
public class BlogController {
	@Autowired 
	private BlogService blogService;
	
	@RequestMapping(value = "/save_blog", method = RequestMethod.POST)
	public String savBlog(@ModelAttribute("blog") Blog blog, BindingResult result) {
		blogService.saveBlog(blog);
		return "redirect:bloglist";

	}@RequestMapping("/bloglist")
	public String listblogPage(Map<String, Object> map) {
		map.put("blogList", blogService.listblog());
		return "/home";
	}



}
