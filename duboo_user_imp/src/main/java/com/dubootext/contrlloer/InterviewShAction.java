package com.dubootext.contrlloer;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.duboo_order.service.Order;
import com.duboo_user.service.User;

/**
 *临时拜访审批
 *niuchen 20170705
 */
@Controller
@Scope("prototype")
@RequestMapping(value="/interviewSh")
public class InterviewShAction  {
	
	@Resource(name = "IOrederService")
	com.duboo_order.service.IOrderService iorederservice;
	
	@Resource(name = "IUserService")
	com.duboo_user.service.IUserService iuserservice;
	
	@RequestMapping("/show.htm")
	@ResponseBody
	public Map interviewShOperator(HttpServletRequest res,HttpServletResponse response){
		Order o=iorederservice.getorder();
		Map map=new HashMap();
		map.put("aa","单独");
		if(o!=null){
		 map.put("name",o.getBuyname());
		}
   		return map;
	}
	@RequestMapping("/add.htm")
	@ResponseBody
	public String add(HttpServletRequest res,HttpServletResponse response)  {
	
		String name=res.getParameter("name");
		User u=new User();
		u.setName(name);
		String o=iuserservice.adduser(u);
    		return o;
	}
}
