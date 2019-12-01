package com.ivt.repositories;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;

@Repository
public interface PromotionRepository extends CrudRepository<PromotionEntity, Integer> {
	
	@Query("Select pr From PromotionEntity pr where pr.description Like ?1 Or pr.discount Like ?1"
			+ "Or pr.status Like ?1")
	public List<PromotionEntity> findBySearch(String searchTx);
	
	
	
	@Query(value = "select * from promotion where startDate < ?1 and endDate > ?1",nativeQuery = true)
	public List<PromotionEntity> findByDate(Date from);	
	
	@Query(value = "select * from promotion p\n" + 
			"join promotion_product pp\n" + 
			"on pp.promotion_id=p.id\n" + 
			"where p.startDate=?1",nativeQuery = true)
	public List<PromotionEntity> findByDate1(Date from);
	
	@Query(value = "select * from promotion pr\n" + 
			"join promotion_product pp\n" + 
			"on pp.promotion_id=pr.id\n" + 
			"join product p\n" + 
			"on pp.product_id=p.id\n" + 
			"where p.id=?1",nativeQuery = true)
	public PromotionEntity findByProductId(int id);
	
	
	@Query(value = "select * from promotion pr\n" + 
			"join promotion_product pp\n" + 
			"on pp.promotion_id=pr.id\n" + 
			"join product p\n" + 
			"on pp.product_id=p.id\n" + 
			"where pr.id=?1",nativeQuery = true)
	public PromotionEntity findByPromotionId(int id);
	
	

}
