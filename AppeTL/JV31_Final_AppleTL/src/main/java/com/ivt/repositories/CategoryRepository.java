package com.ivt.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ivt.entities.CategoryEntity;

@Repository
public interface CategoryRepository extends CrudRepository<CategoryEntity, Integer>  {
	
	@Query("Select cat From CategoryEntity cat where cat.name Like ?1 Or cat.description Like ?1")
	public List<CategoryEntity> findSearch(String searchTx);
	

}
