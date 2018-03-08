package com.duboo_order_imp.service;

import com.duboo_order.service.IOrderService;
import com.duboo_order.service.Order;

public class OederService implements IOrderService {

	public Order getorder() {
		 Order o=new Order();
		 o.setBuyname("牛琛");
		 o.setOid(1);
		 System.out.println("调用OederService");
		return o;
	}

}
