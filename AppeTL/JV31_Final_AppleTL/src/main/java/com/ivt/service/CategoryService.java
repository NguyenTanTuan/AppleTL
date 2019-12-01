package com.ivt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivt.entities.CategoryEntity;
import com.ivt.repositories.CategoryRepository;
import com.ivt.repositories.ImageRepository;

@Service
public class CategoryService {
	
	@Autowired
	public  CategoryRepository categoryRepository;
	@Autowired
	public ImageRepository imageRepository;
	
	public List<CategoryEntity> getAllCategory(){
		List<CategoryEntity> category=(List<CategoryEntity>)categoryRepository.findAll();
		return category;
	}
	
	public CategoryEntity findCategoryById(int id) {
		CategoryEntity category=categoryRepository.findOne(id);
		if(category==null) {
			return new CategoryEntity();
		}
		return category;
	}
	
	public void saveCategory(CategoryEntity category) {
		categoryRepository.save(category);
	}
	public boolean deleteCategory(int id) {
		categoryRepository.delete(id);
		return categoryRepository.exists(id);
	}
	
	public List<CategoryEntity> searchCate(String searchTx){
		return (List<CategoryEntity>) categoryRepository.findSearch("%"+searchTx+"%");
	}

}
