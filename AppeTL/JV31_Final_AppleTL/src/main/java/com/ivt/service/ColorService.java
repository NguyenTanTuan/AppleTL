package com.ivt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivt.entities.ColorEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.repositories.ColorRepository;

@Service
public class ColorService {
	@Autowired
	public ColorRepository colorRepository;
	
	public List<ColorEntity> getColor(){
		return (List<ColorEntity>) colorRepository.findAll();
	}
	
	public List<ColorEntity> findColorByProduct(ProductEntity product){
		return (List<ColorEntity>) colorRepository.findByProduct(product);
	}

}
