package com.ivt.repositories;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.OrderEntity;

@Repository
public interface OrderRepository extends CrudRepository<OrderEntity, Integer> {
	
	@Query("Select o From OrderEntity o Where o.address Like ?1 Or o.note Like ?1 ")
	public List<OrderEntity> findOrderbySearch(String searchTx);
	
//	@Query(value = "select distinct orderDate from orderz where orderDate between ?1 and ?2",nativeQuery = true)
	@Query("Select o from OrderEntity o where o.orderDate between ?1 and ?2")
	public List<OrderEntity> findByOrderDateBetween(Date from, Date to);
	
		
	@Query( value = "select * from orderz where orderDate between ?1 and ?2",nativeQuery = true)
	public List<OrderEntity> findByOrderDateBetween1(Date from, Date to);
	

}
