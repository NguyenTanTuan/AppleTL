package com.ivt.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ivt.entities.ImageEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;
import com.ivt.repositories.ImageRepository;
import com.ivt.repositories.ProductRepository;
import com.ivt.repositories.PromotionRepository;

@Service
public class PromotionService {
	@Autowired
	public PromotionRepository promotionRepository;
	@Autowired
	public ImageRepository imageRepository;
	@Autowired
	public ProductService productService;
	@Autowired
	public ProductRepository productRepository;

	public List<PromotionEntity> getAllPromotion() {
		List<PromotionEntity> promotion = (List<PromotionEntity>) promotionRepository.findAll();
		
		for (PromotionEntity list : promotion) {
			list.setImages(imageRepository.findByPromotion(list));
		}
		return promotion;

	}

	public PromotionEntity findPromotionById(int id) {
		PromotionEntity promotion=promotionRepository.findOne(id);
		List<ImageEntity> image=(List<ImageEntity>) imageRepository.findByPromotion(promotion);
		promotion.setImages(image);
		return promotion;
	}
	
	
	//// lien ket manytomany///////////
	public PromotionEntity findPromotionByProductId(int id) {
		PromotionEntity promotion=promotionRepository.findOne(id);
		promotion.setProduct(productRepository.findByPromotionId(id));
		return promotion;
	}

	public PromotionEntity savePromotion(PromotionEntity promotion) {
		return promotionRepository.save(promotion);
	}
	
	public boolean deletePromotion(int id) {
		promotionRepository.delete(id);
		return promotionRepository.exists(id);
	}

	public List<PromotionEntity> searchPromotion(String searchTx) {
		List<PromotionEntity> promotion = promotionRepository.findBySearch("%" + searchTx + "%");
		for (PromotionEntity list : promotion) {
			list.setImages(imageRepository.findByPromotion(list));
		}
		return promotion;
	}


		
	////// find By Date   ///////
	public List<PromotionEntity> findByDate(Date from){
		List<PromotionEntity> promotion=(List<PromotionEntity>)promotionRepository.findByDate(from);
		for(PromotionEntity i:promotion) {
			i.setImages(imageRepository.findByPromotion(i));
		}
		return promotion;
	}
	    


}
