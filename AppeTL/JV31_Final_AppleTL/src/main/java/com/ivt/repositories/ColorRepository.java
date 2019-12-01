package com.ivt.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.ColorEntity;
import com.ivt.entities.ProductEntity;

@Repository
public interface ColorRepository extends CrudRepository<ColorEntity, Integer> {
	
	List<ColorEntity> findByProduct(ProductEntity product);

}
