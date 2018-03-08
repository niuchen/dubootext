package com.duboo_user_imp.service;

import com.alibaba.dubbo.rpc.RpcContext;
import com.duboo_user.service.IUserService;
import com.duboo_user.service.User;

public class UserService implements IUserService {
	@Save(color = "") 
	public User getuser() {
		 User o=new User();
		 o.setName("牛琛");
		 o.setUid(1);
		 System.out.println("调用UserService");
		return o;
	}

	@Override
	public String adduser(User u) {
		System.out.println(u.getName());
		 
		return u.getName();
	}

}
