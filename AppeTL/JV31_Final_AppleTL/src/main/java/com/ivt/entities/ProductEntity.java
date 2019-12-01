package com.ivt.entities;

import java.util.List;
import java.util.Objects;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.ivt.enums.Color;

@Entity
@Table(name = "product")
public class ProductEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String productName;
	private String description;
	private double price;
	private int quantityInStore;
	private boolean status;
	private String productColor;
	private String ram;
	private String rom;
	
	@Transient
	private int totalProduct;
	
	
	@Enumerated(EnumType.STRING)
	private Color colors=Color.Gold;

	@ManyToOne
	@JoinColumn(name = "category_id")
	private CategoryEntity category;

	@OneToMany(mappedBy = "product", cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
	private List<ImageEntity> images;

	@OneToMany(mappedBy = "product")
	private List<OrderDetailEntity> orderDetailList;
	
	
	/////// ManytoMany
	@ManyToMany(mappedBy = "product",fetch = FetchType.EAGER)
	private List<PromotionEntity> promotion;

	
	
	
	
	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private List<ColorEntity> color;

	
	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
	private List<FavoriteEntity> favorite;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantityInStore() {
		return quantityInStore;
	}

	public void setQuantityInStore(int quantityInStore) {
		this.quantityInStore = quantityInStore;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public List<ImageEntity> getImages() {
		return images;
	}

	public void setImages(List<ImageEntity> images) {
		this.images = images;
	}

	public List<OrderDetailEntity> getOrderDetailList() {
		return orderDetailList;
	}

	public void setOrderDetailList(List<OrderDetailEntity> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}

	public List<PromotionEntity> getPromotion() {
		return promotion;
	}

	public void setPromotion(List<PromotionEntity> promotion) {
		this.promotion = promotion;
	}

	public List<FavoriteEntity> getFavorite() {
		return favorite;
	}

	public void setFavorite(List<FavoriteEntity> favorite) {
		this.favorite = favorite;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public List<ColorEntity> getColor() {
		return color;
	}

	public void setColor(List<ColorEntity> color) {
		this.color = color;
	}

	public String getRom() {
		return rom;
	}

	public void setRom(String rom) {
		this.rom = rom;
	}

	public Color getColors() {
		return colors;
	}

	public void setColors(Color colors) {
		this.colors = colors;
	}
	public Integer getTotalProduct() {
		return totalProduct;
	}

	public void setTotalProduct(int totalProduct) {
		this.totalProduct = totalProduct;
	}
	
	 @Override
	    public int hashCode() {
	        int hash = 7;
	        hash = 71 * hash + this.id;
	        hash = 71 * hash + Objects.hashCode(this.colors);
	        hash = 71 * hash + Objects.hashCode(this.description);
	        hash = 71 * hash + Objects.hashCode(this.promotion);
	        return hash;
	    }


}
