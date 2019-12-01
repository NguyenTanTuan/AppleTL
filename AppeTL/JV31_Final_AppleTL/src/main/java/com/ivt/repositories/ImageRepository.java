package com.ivt.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.ImageEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;

@Repository
public interface ImageRepository extends CrudRepository<ImageEntity, Integer> {
	
	List<ImageEntity> findByProduct(ProductEntity product);
	List<ImageEntity> findByPromotion(PromotionEntity promotion);

}
