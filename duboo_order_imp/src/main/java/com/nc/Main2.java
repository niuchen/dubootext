package com.nc;

import java.io.IOException;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.duboo_user.service.IUserService;
import com.duboo_user.service.User;

public class Main2 {

	public static void main(String[] args) {
		  ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
	                new String[]{"dubbo-config2.xml"});
	        context.start();
	        // obtain proxy object for remote invocation
         IUserService demoService = (IUserService) context.getBean("IUserService");
 	        // execute remote invocation
 	        User hello = demoService.getuser();
//	        // show the result
         System.out.println(hello.getName());
         System.out.println(hello.getName());
         System.out.println(hello.getName());
         System.out.println(hello.getName());
         System.out.println(hello.getName());
//	        try {
//				System.in.read();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} // 按任意键退出
	}

}
