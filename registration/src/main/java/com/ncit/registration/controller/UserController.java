package com.ncit.registration.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ncit.registration.model.User;
import com.ncit.registration.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/home")
	public String openHome() {
		return "/home";
	}

	@RequestMapping("/getform")
	public String openRegistrationForm(Map<String, Object> map) {
		map.put("user", new User());
		return "/user/registration";
	}

	@RequestMapping(value = "/save_user", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user, BindingResult result) {
		userService.saveUser(user);
		return "/user/login";

	}

	@RequestMapping("/getlogin")
	public String getLoginPage(Map<String, Object> map) {
		map.put("user", new User());
		return "/user/login";
	}

	@RequestMapping("/list")
	public String listuserPage(Map<String, Object> map) {
		map.put("userList", userService.listUser());
		return "/user/userList";
	}

	@RequestMapping("/logout")
	public String logOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:getlogin";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("user") User user, HttpSession session, HttpServletRequest request,
			Map<String, Object> map) {
		User userFromDb = userService.getUserByUserNameAndPassword(user.getUserName(), user.getPassword());
		String page = "";
		if (null != userFromDb) {
			request.getSession().setAttribute("username", userFromDb.getUserName());
			request.getSession().setAttribute("userType", userFromDb.getUserType());
			map.put("usertype", userFromDb.getUserType());
			if ("Writer".equals(userFromDb.getUserType())) {
				page = "/writerBlog";

			}
		}
		return page;
	}

}
