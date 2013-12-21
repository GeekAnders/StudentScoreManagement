package com.sm.bean;

import javax.servlet.http.HttpServletRequest;

import my.db.POJO;
import my.mvc.IUser;

public class User extends POJO{
	
	public static User INSTANCE = new User();

	public static IUser getLoginUser(HttpServletRequest request) {
		
		return null;
	}

}
