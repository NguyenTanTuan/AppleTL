package com.ivt.repositories;

import java.sql.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.CategoryEntity;
import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;

@Repository
public interface ProductRepository extends CrudRepository<ProductEntity, Integer> {

	@Query("Select pr From ProductEntity pr where pr.productName Like ?1")
	public List<ProductEntity> findProduct1(String searchTx);

	@Query("Select pr From ProductEntity pr where pr.id Like ?1 Or pr.quantityInStore Like ?1" + "Or pr.price Like ?2")
	public String findProduct2(int quantity, double price);

	@Query("Select pr From ProductEntity pr Order by pr.price")
	public List<ProductEntity> sortProductByPrice();

	public List<ProductEntity> findByCategory(CategoryEntity category);
	
	@Query(value = "select * from product p\n" + 
			"join promotion_product pp\n" + 
			"on pp.product_id=p.id\n" + 
			"join promotion pr\n" + 
			"on pp.promotion_id=pr.id\n" + 
			"where pp.promotion_id=?1 ",nativeQuery = true)
	public List<ProductEntity> findByPromotionId(int id);
	
	
		
	@Query(value = "select * from product p\n" + 
			"join promotion_product pp\n" + 
			"on pp.product_id=p.id\n" + 
			"join promotion pr\n" + 
			"on pp.promotion_id=pr.id\n" + 
			"where pr.startDate<=?1 and pr.endDate>=?1",nativeQuery = true)
	public List<ProductEntity> findByPromotionDate(Date from);
	
	
	@Query(value = "select * from product p\n" + 
			"join promotion_product pp\n" + 
			"on pp.product_id=p.id\n" + 
			"join promotion pr\n" + 
			"on pp.promotion_id=pr.id\n" + 
			"where p.productName like %?1%",nativeQuery  =true)
	public List<ProductEntity> findByProductName(String search);
	
	@Query(value = "select * from product p\n" + 
			"join promotion_product pp\n" + 
			"on pp.product_id=p.id\n" + 
			"join promotion pr\n" + 
			"on pp.promotion_id=pr.id\n" + 
			"where pr.discount=?1",nativeQuery = true)
	public List<ProductEntity> findByPromotionDiscount(int discount);
	
	
	Page<ProductEntity> findAll(Pageable pageable);
}
