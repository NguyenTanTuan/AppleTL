package com.ivt.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import com.ivt.entities.CategoryEntity;
import com.ivt.entities.ImageEntity;
import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;
import com.ivt.repositories.CategoryRepository;
import com.ivt.repositories.ImageRepository;
import com.ivt.repositories.OrderDetailRepository;
import com.ivt.repositories.ProductRepository;
import com.ivt.repositories.PromotionRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private PromotionService promotionService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ImageRepository imageRepository;
	@Autowired
	private PromotionRepository promotionRepository;

	public List<ProductEntity> getAllProductAll() {
		List<ProductEntity> product = (List<ProductEntity>) productRepository.findAll();
		for (ProductEntity list : product) {
			List<ImageEntity> image = (List<ImageEntity>) imageRepository.findByProduct(list);
			list.setImages(image);
		}
		return product;
	}

	public List<ProductEntity> getAllProduct() {
		Page<ProductEntity> pageProduct = productRepository.findAll(new PageRequest(0, 6));
		List<ProductEntity> product = pageProduct.getContent();
		for (ProductEntity list : product) {
			List<ImageEntity> image = (List<ImageEntity>) imageRepository.findByProduct(list);
			list.setImages(image);
			list.setTotalProduct(pageProduct.getTotalPages());
		}

		return product;
	}

	public List<ProductEntity> getProducts(int page) {
		Page<ProductEntity> pageProduct = productRepository.findAll(new PageRequest(page, 6));
		List<ProductEntity> products = pageProduct.getContent();
		if (products != null && products.size() > 0) {
			for (ProductEntity i : products) {
				i.setImages(imageRepository.findByProduct(i));
				i.setTotalProduct(pageProduct.getTotalPages());
			}
		}
		return products;
	}

	public ProductEntity saveProduct(ProductEntity product) {
		return productRepository.save(product);
	}

	public boolean deleteProduct(int id) {
		productRepository.delete(id);
		return productRepository.exists(id);
	}

	public ProductEntity findProductById(int id) {
		ProductEntity product = productRepository.findOne(id);
		List<ImageEntity> image = (List<ImageEntity>) imageRepository.findByProduct(product);
		product.setImages(image);
		return product;
	}

	public List<ProductEntity> searchProduct1(String searchTx) {
		List<ProductEntity> product = (List<ProductEntity>) productRepository.findProduct1("%" + searchTx + "%");
		for (ProductEntity i : product) {
			i.setImages(imageRepository.findByProduct(i));
		}
		return product;
	}

	public List<ProductEntity> sortProductByPrice() {
		List<ProductEntity> product = (List<ProductEntity>) productRepository.sortProductByPrice();
		for (ProductEntity i : product) {
			i.setImages(imageRepository.findByProduct(i));
		}
		return product;
	}

	public List<ProductEntity> findProductByCategoryId(int id) {
		CategoryEntity category = categoryService.findCategoryById(id);
		List<ProductEntity> product = (List<ProductEntity>) productRepository.findByCategory(category);
		if (CollectionUtils.isEmpty(product)) {
			return new ArrayList<ProductEntity>();
		} else {
			for (ProductEntity i : product) {
				List<ImageEntity> image = imageRepository.findByProduct(i);
				i.setImages(image);
			}
			return product;

		}
	}

	public double setPriceDiscount(ProductEntity product) {
		double price = product.getPrice();
		PromotionEntity promotion = promotionRepository.findByProductId(product.getId());
		if (promotion.getId() > 0) {
			price = price - ((price * promotion.getDiscount()) / 100);
		}
		return price;
	}

}
