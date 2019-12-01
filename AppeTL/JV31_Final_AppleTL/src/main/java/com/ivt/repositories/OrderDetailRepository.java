package com.ivt.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.OrderEntity;
import com.ivt.entities.ProductEntity;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetailEntity, Integer> {
	
	
	public List<OrderDetailEntity> findByOrder(OrderEntity order);
	

}
