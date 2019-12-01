package com.ivt.service;



import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ivt.entities.ImageEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;
import com.ivt.repositories.ImageRepository;

@Service
public class ImageService {
	@Autowired
	public ImageRepository imageRepository;
	
	public List<ImageEntity> findimageByProduct(ProductEntity product){
		return(List<ImageEntity>) imageRepository.findByProduct(product);
	}
	
	public List<ImageEntity> findImagebyPromotion(PromotionEntity promotion){
		return(List<ImageEntity>) imageRepository.findByPromotion(promotion);
	}
	
	public List<ImageEntity> getImagebyProductId(ProductEntity product){
		return(List<ImageEntity>) imageRepository.findOne(product.getId());
	}
	

	
	public ImageEntity save(ImageEntity image) {
		return imageRepository.save(image);
	}
	
	public List<ImageEntity> uploadImage(MultipartFile[] files, HttpServletRequest request) {
        List<ImageEntity> images = new ArrayList<ImageEntity>();
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            try {
                byte[] bytes = file.getBytes();
                
                ServletContext context = request.getServletContext();
                String pathUrl = context.getRealPath("/images");
                
                int index = pathUrl.indexOf("target");
                String pathFolder = pathUrl.substring(0, index) + "src//main//webapp//resources//img//products//";
                Path path = Paths.get(pathFolder + file.getOriginalFilename());
                Files.write(path, bytes);

                // get file name
                String name = file.getOriginalFilename();
                
                if (name == null) {
                    name = "new-image" + name;
                }
                
                ImageEntity image = new ImageEntity();
                image.setName(name);
                images.add(image);
                
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return images;
    }
    

}
