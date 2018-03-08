package com.duboo_user.service;

import javax.validation.constraints.NotNull;

/**duboo订单服务接口**/
public interface IUserService {
	public User getuser();
	public String adduser(@NotNull User u);
	@interface Save { String color();  }//定义注解例子
}
