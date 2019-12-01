package com.ivt.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivt.entities.AccountEntity;
import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.OrderEntity;
import com.ivt.repositories.OrderDetailRepository;
import com.ivt.repositories.OrderRepository;

@Service
public class OrderService {
	@Autowired
	public OrderRepository orderRepository;
	@Autowired
	public OrderDetailRepository orderDetailRepository;

	public List<OrderEntity> getAllOrder() {
		List<OrderEntity> newOrder = (List<OrderEntity>) orderRepository.findAll();
		for (OrderEntity list : newOrder) {
			List<OrderDetailEntity> detail = orderDetailRepository.findByOrder(list);
			list.setOrderDetailList(detail);
		}
		return newOrder;
	}

	public OrderEntity findOrderById(int id) {
		OrderEntity newOrder=orderRepository.findOne(id);
		if(newOrder!=null) {
			newOrder.setOrderDetailList(orderDetailRepository.findByOrder(newOrder));
		}
		return newOrder;
	}

	public void saveOrder(OrderEntity order) {
		orderRepository.save(order);
		List<OrderDetailEntity> detail=order.getOrderDetailList();
		for(OrderDetailEntity list:detail) {
			orderDetailRepository.save(list);
		}
	}
	
	public OrderEntity saveOrderAccount(OrderEntity newOrder,AccountEntity account) {
		try {
			newOrder.setAccount(account);
			if(account.getId()>0) {
				if(newOrder.getId()>0) {
					for(OrderDetailEntity item:newOrder.getOrderDetailList()) {
						item.setOrder(newOrder);
						orderDetailRepository.save(item);
					}
				}
			}
		}catch(Exception e) {
			
		}
		return orderRepository.save(newOrder);
	}

	public boolean deleteOrder(int id) {
		orderRepository.delete(id);
		return orderRepository.exists(id);
	}

	public List<OrderEntity> findOrderBySearch(String searchTx) {
		return (List<OrderEntity>) orderRepository.findOrderbySearch("%" + searchTx + "%");
	}

	
}
