/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivt.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.awt.Image;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.formula.functions.Today;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.ivt.entities.AccountEntity;
import com.ivt.entities.CategoryEntity;
import com.ivt.entities.ColorEntity;
import com.ivt.entities.CustomerEntity;
import com.ivt.entities.ImageEntity;
import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.OrderEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;
import com.ivt.enums.Color;
import com.ivt.enums.Gender;
import com.ivt.repositories.ImageRepository;
import com.ivt.repositories.OrderRepository;
import com.ivt.repositories.ProductRepository;
import com.ivt.repositories.PromotionRepository;
import com.ivt.service.AccountService;
import com.ivt.service.CSVService;
import com.ivt.service.CategoryService;
import com.ivt.service.ColorService;
import com.ivt.service.EmailService;
import com.ivt.service.ImageService;
import com.ivt.service.OrderService;
import com.ivt.service.ProductService;
import com.ivt.service.PromotionService;
import com.mysql.cj.Session;

/**
 *
 * @author Tuan
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {

	@Autowired
	public JavaMailSender mailSender;
	@Autowired
	public ServletContext context;
	@Autowired
	public EmailService emailService;
	@Autowired
	public CSVService csvService;

	public StringBuilder textHtml = new StringBuilder();
	@Autowired
	public CategoryService categoryService;
	@Autowired
	public PromotionService promotionService;
	@Autowired
	public ProductService productService;
	@Autowired
	public OrderService orderService;
	@Autowired
	public AccountService accountService;
	@Autowired
	public ColorService colorService;
	@Autowired
	public ImageService imageService;
	@Autowired
	public ImageRepository imageRepository;
	@Autowired
	public ProductRepository productRepository;
	@Autowired
	public OrderRepository orderRepository;
	@Autowired
	public PromotionRepository promotionRepository;

	@RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
	public String viewHome(Model model) {
		return "manager/home";
	}

	///////// Order product///////////////
	@RequestMapping(value = "/order-product")
	public String orderProductForm(Model model, @RequestParam(value = "id") int id, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		int check = 1;
		for (OrderDetailEntity item : newOrder.getOrderDetailList()) {
			if (item.getProduct().getId() == id) {
				item.setQuantity(item.getQuantity() + 1);
				item.setPrice(item.getQuantity() * item.getUnitPrice());
				check = 0;
			}
		}
		ProductEntity product = productService.findProductById(id);
		product.setImages(imageService.findimageByProduct(product));
		OrderDetailEntity orderDetail = new OrderDetailEntity();
		orderDetail.setProduct(product);
		orderDetail.setUnitPrice(product.getPrice());
		orderDetail.setQuantity(1);
		orderDetail.setPrice(orderDetail.getQuantity() * orderDetail.getUnitPrice());
		orderDetail.setOrder(newOrder);
		List<OrderDetailEntity> orderDetailList = newOrder.getOrderDetailList();
		if (check == 1) {
			orderDetailList.add(orderDetail);
			newOrder.setOrderDetailList(orderDetailList);
		}
		double totalPrice = 0;
		newOrder.setTotalPrice(newOrder.getTotalPriceProduct(newOrder));
		session.setAttribute("newOrder", newOrder);
		return "manager/cart";
	}

///////// More Order   ////////////
	@RequestMapping(value = "/moreOrder")
	public String moreOrder(Model model, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		session.setAttribute("newOrder", newOrder);
		model.addAttribute("product", productService.getAllProduct());
		return "manager/list-product";
	}

	@RequestMapping("/deleteCart")
	public String deleteCart(Model model, @RequestParam("id") int id, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		List<OrderDetailEntity> list = newOrder.getOrderDetailList();
		for (OrderDetailEntity orderDetail : list) {
			if (orderDetail.getProduct().getId() == id) {
				list.remove(orderDetail);
				break;
			}
		}
		newOrder.setTotalPrice(newOrder.getTotalPriceProduct(newOrder));
		newOrder.setOrderDetailList(list);
		session.setAttribute("newOrder", newOrder);
		return "manager/cart";
	}

	private String[] countries = { "VIETNAM", "LAOS", "KOREA", "AMERICA" };

	@RequestMapping(value = "/check-out")
	public String checkout(Model model, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		newOrder.setTotalPrice(newOrder.getTotalPriceProduct(newOrder));
		session.setAttribute("newOrder", newOrder);
		model.addAttribute("account", new AccountEntity());
		model.addAttribute("genders", Gender.values());
		model.addAttribute("action", "manager/save-orderProduct");
		model.addAttribute("countries", countries);
		return "manager/checkout-product";
	}

	@RequestMapping("/check")
	public String check(Model model) {
		return "manager/checkout-product";
	}

	@RequestMapping(value = "/save-orderProduct", method = RequestMethod.POST)
	public String saveOrderProduct(Model model, @ModelAttribute("account") AccountEntity account, HttpSession session,
			HttpServletRequest request, @Value(value = "${fileForSend}") String pathName,
			@RequestParam(value = "name") String name) throws MessagingException {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		try {
			AccountEntity newAccount = accountService.saveAccount(account);
			List<OrderDetailEntity> orderDetails = newOrder.getOrderDetailList();
			newOrder.setAccount(newAccount);
			Date today = new Date();
			Date tomorow = new Date(today.getTime() + (1000 * 60 * 60 * 24 * 3));
			newOrder.setOrderDate(today);
			newOrder.setDeliveredDate(tomorow);
			orderService.saveOrder(newOrder);
			emailService.sendEmailByAccountId(orderDetails, account, newOrder);

		} catch (Exception e) {
		}
		session.removeAttribute("newOrder");

		return "redirect:/manager/list-order?message=Check Your Email";
	}

	@RequestMapping(value = "/getajax")
	public @ResponseBody String testjax2(Model model, @RequestParam("id") int id, @RequestParam("quantity") int qtt,
			HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		double price = 0;
		for (OrderDetailEntity orderDetail : newOrder.getOrderDetailList()) {
			if (orderDetail.getProduct().getId() == id) {
				orderDetail.setQuantity(qtt);
				orderDetail.setPrice(orderDetail.getQuantity() * orderDetail.getUnitPrice());
				price = orderDetail.getPrice();
			}
		}
		newOrder.setTotalPrice(newOrder.getTotalPriceProduct(newOrder));
		;
		double total = newOrder.getTotalPrice();
		session.setAttribute("newOrder", newOrder);

		return "[" + price + "," + total + "]";

	}

	/////////// DOWNLOAD CSV Product ////////////

	@RequestMapping(value = "/downloadCSVproduct")
	public void downloadCSVProduct(Model model, HttpServletResponse response) throws IOException {
		List<ProductEntity> product = productService.getAllProduct();
		model.addAttribute("product", product);

		String COMMA_DELIMITER = ",";
		String LINE_SEPARATOR = "\n";
		response.setContentType("text/csv");
		String csvFileName = "product.csv";
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"", csvFileName);
		response.setHeader(headerKey, headerValue);

		// Add header.
		ArrayList<String> rows = new ArrayList<String>();
		rows.add("Product Name, Color, RAM, ROM ,Description,Price,Quantity,Status");
		rows.add("\n");
		for (ProductEntity productlist : product) {
			StringBuffer result = new StringBuffer();
			result.append(String.valueOf(productlist.getProductName())).append(COMMA_DELIMITER);
//			result.append(String.valueOf(productlist.getCategory().getName())).append(COMMA_DELIMITER);
			result.append(String.valueOf(productlist.getProductColor())).append(COMMA_DELIMITER);
			result.append(String.valueOf(productlist.getRam())).append(COMMA_DELIMITER);
			result.append(String.valueOf(productlist.getRom())).append(COMMA_DELIMITER);
			result.append(String.valueOf(convertDataToExport(productlist.getDescription()))).append(COMMA_DELIMITER);
			result.append(String.valueOf(productlist.getPrice())).append(COMMA_DELIMITER);
			result.append(String.valueOf(productlist.getQuantityInStore())).append(COMMA_DELIMITER);
			result.append(String.valueOf(converStatusToString(productlist.getStatus())));

			rows.add(result.toString());
			rows.add(LINE_SEPARATOR);

		}
		Iterator<String> iter = rows.iterator();
		while (iter.hasNext()) {
			String outputString = (String) iter.next();
			response.getOutputStream().print(outputString);
		}
		response.getOutputStream().flush();
	}

	private String convertDataToExport(String input) {
		return input.replace(",", " ");
	}

	private String converStatusToString(boolean input) {
		if (input == true) {
			return "dung";
		} else {
			return "sai";
		}
	}

	//////////// Download file CSV Order ////////////
	@RequestMapping(value = "/downloadCSVorder")
	public void downloadCSV1(Model model, HttpServletResponse response) throws IOException {
		List<OrderEntity> order = orderService.getAllOrder();
		model.addAttribute("order", order);

		String COMMA_DELIMITER = ",";
		String LINE_SEPARATOR = "\n";
		response.setContentType("text/csv");
		String csvFileName = "order.csv";
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"", csvFileName);
		response.setHeader(headerKey, headerValue);

		// Add header.
		ArrayList<String> rows = new ArrayList<String>();
		rows.add("Account Name,Gender,Address,Order Date, Delivered Date,Total Price");
		rows.add("\n");
		for (OrderEntity orderList : order) {
			StringBuffer result = new StringBuffer();
			result.append(String.valueOf(orderList.getAccount().getUsername())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getAccount().getGender())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getAccount().getAddress())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getOrderDate())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getDeliveredDate())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getTotalPrice()).toString()).append(COMMA_DELIMITER);

			rows.add(result.toString());
			rows.add(LINE_SEPARATOR);

		}
	}

//	//////////
//	
//	
//	
//	 Orders
//	
//	
//	///////////
	@RequestMapping("/list-order")
	public String listAllOrder(Model model, HttpSession session,
			@RequestParam(value = "message", required = false) String message) {
		List<OrderEntity> newOrder = (List<OrderEntity>) orderService.getAllOrder();
		session.setAttribute("newOrder", newOrder);
		model.addAttribute("message", message);
		return "manager/list-order";
	}

	/////////// Add Order ////////////
	@RequestMapping("/add-order")
	public String addOrderForm(Model model) {
		model.addAttribute("newOrder", new OrderEntity());
		model.addAttribute("action", "manager/save-order");
		model.addAttribute("accounts", accountService.getAccount());
		return "manager/order-form";
	}

	/////////// Save Order /////////////
	@RequestMapping(value = "manager/save-order", method = RequestMethod.POST)
	public String saveOrder(Model model, @ModelAttribute("newOrder") OrderEntity newOrder) {
		orderService.saveOrder(newOrder);
		return "redirect:/manager/list-order";
	}

	//////////// Edit Order /////////////
	@RequestMapping("/edit-order/{orderID}")
	public String editOrderForm(Model model, @PathVariable("orderID") int orderID) {
		model.addAttribute("newOrder", orderService.findOrderById(orderID));
		model.addAttribute("action", "manager/edit-order");
		model.addAttribute("accounts", accountService.getAccount());
		return "manager/order-form";
	}

	@RequestMapping(value = "/edit-order")
	public String editOrder(Model model, @ModelAttribute("order") OrderEntity order) {
		orderService.saveOrder(order);
		return "redirect:/manager/list-order";
	}

	/////////// Delete Order ////////////////

	@RequestMapping("/delete-order/{orderID}")
	public String deleteOrder(Model model, @PathVariable("orderID") int orderID) {
		OrderEntity newOrder = orderService.findOrderById(orderID);
		if (newOrder.getId() > 0) {
			orderService.deleteOrder(orderID);
			return "redirect:/manager/list-order";
		} else {
			return "redirect:/manager/list-order";

		}
	}

	////////// Order Detail //////////
	@RequestMapping("/order-detail/{orderID}")
	public String orderDetail(Model model, @PathVariable("orderID") int orderID, HttpSession session) {
		try {
			OrderEntity newOrder = (OrderEntity) orderService.findOrderById(orderID);
			model.addAttribute("o", newOrder);
		} catch (Exception e) {

		}
		return "manager/order-detail";
	}

	//////// Search Order////////////
	@RequestMapping(value = "/searchOrder", method = RequestMethod.POST)
	public String searchOrder(Model model, @ModelAttribute("searchTx") String searchTx, HttpServletResponse response)
			throws IOException {
		List<OrderEntity> newOrder = (List<OrderEntity>) orderService.findOrderBySearch(searchTx);
		model.addAttribute("newOrder", newOrder);
		return "/manager/list-order";
	}

	/////// Find OrderBy OrderDate Between/////////
	@RequestMapping(value = "/searchOrderByDate", method = RequestMethod.POST)
	public String searchDate(Model model, @RequestParam(value = "from") String fromStr,
			@RequestParam(value = "to") String toStr, HttpServletResponse response) throws IOException {
		java.sql.Date from = java.sql.Date.valueOf(fromStr);
		java.sql.Date to = java.sql.Date.valueOf(toStr);
		List<OrderEntity> newOrder = (List<OrderEntity>) orderRepository.findByOrderDateBetween1(from, to);
		model.addAttribute("newOrder", newOrder);
		return "/manager/list-order";
	}

//	///////////////
//	
//	
//	
//	     CATEGORY
//	
//	
//
//	///////////////
	//////// List Category //////////////
	@RequestMapping("/list-category")
	public String listCategory(Model model) {
		List<CategoryEntity> category = (List<CategoryEntity>) categoryService.getAllCategory();
		model.addAttribute("category", category);
		return "manager/list-category";
	}

	//////// Add Category /////////////
	@RequestMapping("/add-category")
	public String viewFormAddCategory(Model model) {
		model.addAttribute("category", new CategoryEntity());
		model.addAttribute("action", "manager/save-category");
		return "manager/category-form";
	}

	@RequestMapping(value = "/save-category", method = RequestMethod.POST)
	public String saveCategory(Model model, @ModelAttribute("category") CategoryEntity category) {
		try {
			categoryService.saveCategory(category);
		} catch (Exception e) {

		}
		return "redirect:/manager/list-category";
	}

	///////// Edit Category //////////
	@RequestMapping("/edit-category/{cateID}")
	public String editCategoryForm(Model model, @PathVariable("cateID") int cateID) {
		model.addAttribute("category", categoryService.findCategoryById(cateID));
		model.addAttribute("action", "manager/edit-category");
		return "manager/category-form";
	}

	@RequestMapping("/edit-category")
	public String editCategory(Model model, @ModelAttribute("category") CategoryEntity category) {
		categoryService.saveCategory(category);
		return "redirect:/manager/list-category";
	}

	//////// Delete Category //////////
	@RequestMapping("/delete-category/{cateID}")
	public String deleteCategory(Model model, @PathVariable("cateID") int cateID) {
		CategoryEntity delete = categoryService.findCategoryById(cateID);
		if (delete.getId() > 0) {
			categoryService.deleteCategory(cateID);
			return "redirect:/manager/list-category";
		} else {
			return "redirect:/manager/list-category";
		}
	}

	////////// Search CATEGORY ///////////
	@RequestMapping(value = "/searchCategory", method = RequestMethod.POST)
	public String searchCategory(Model model, @ModelAttribute("searchTx") String searchTx) {
		model.addAttribute("category", categoryService.searchCate(searchTx));
		return "/manager/list-category";
	}

	/////////// CATEGORY DETAIL /////////
	@RequestMapping(value = "/category-detail", method = RequestMethod.GET)
	public String categoryDetailForm(Model model, @RequestParam(value = "id", required = false) Integer id) {
		CategoryEntity category = categoryService.findCategoryById(id);
		model.addAttribute("c", category);
		return "manager/category-detail";
	}

//	///////////////////
//	
//	
//	
//	
//	      PRODUCT
//	
//	
//	
//	
//	
//	////////////////////

	////////// List Product ////////////////////
	@RequestMapping(value = "/list-product")
	public String listProduct(Model model, HttpSession session) {
		OrderEntity newOrder = new OrderEntity();
		List<OrderDetailEntity> orderDetailList = new ArrayList<OrderDetailEntity>();
		newOrder.setOrderDetailList(orderDetailList);
		session.setAttribute("newOrder", newOrder);

		List<ProductEntity> products = productService.getAllProduct();
		model.addAttribute("product", products);
		model.addAttribute("totalPage", productService.getAllProduct().get(0).getTotalProduct());


		model.addAttribute("category", categoryService.getAllCategory());
		model.addAttribute("color", colorService.getColor());
		return "manager/list-product";
	}
	
	@RequestMapping("/product")
	public String pro(Model model) {
		List<ProductEntity> product = (List<ProductEntity>) productService.getAllProduct();
		model.addAttribute("product", product);		
		return"manager/product1";
	}
	
	

	@RequestMapping("/list/{page}")
	public String listPage(Model model, @PathVariable("page") int page, HttpSession session) {
		List<ProductEntity> product = productService.getProducts(page);
		model.addAttribute("product", product);
		model.addAttribute("totalPage", productService.getAllProduct().get(0).getTotalProduct());
		model.addAttribute("category", categoryService.getAllCategory());
		model.addAttribute("color", colorService.getColor());
		return "manager/list-product";
	}

	////////// Add Product ///////////////
	@RequestMapping("/add-product")
	public String viewFormAddProduct(Model model) {
		ProductEntity product = new ProductEntity();
		model.addAttribute("product", product);
		model.addAttribute("action", "manager/add-product");
		model.addAttribute("category", categoryService.getAllCategory());
		model.addAttribute("color", Color.values());
		return "manager/product-form";
	}

	@RequestMapping(value = "/add-product", method = RequestMethod.POST)
	public String addProductform(Model model, @ModelAttribute("product") ProductEntity product,
			@RequestParam("files") MultipartFile[] files, HttpServletRequest request) {
		if (product != null) {
			if (files != null && files.length > 0) {
				product.setImages(imageService.uploadImage(files, request));
				product = productService.saveProduct(product);
				if (product.getId() > 0) {
					if (product.getImages().size() > 0) {
						for (ImageEntity image : product.getImages()) {
							image.setProduct(product);
							imageService.save(image);
						}
					}
					model.addAttribute("message", "add product successfully.");
				} else {
					model.addAttribute("message", "add product fail.");
				}
			}
		}
		return "redirect:/manager/list-product";
	}

	////////////// EDIT PRODUCTS /////////////
	@RequestMapping(value = "/edit-product/{productID}")
	public String editProduct(Model model, @PathVariable("productID") int productID) {
		ProductEntity product = productService.findProductById(productID);
		model.addAttribute("product", product);
		model.addAttribute("action", "manager/edit-product");
		model.addAttribute("category", categoryService.getAllCategory());
		model.addAttribute("color", Color.values());
		return "manager/product-form";
	}

	@RequestMapping(value = "/edit-product", method = RequestMethod.POST)
	public String editProduct(Model model, @ModelAttribute("product") ProductEntity product) {
		productService.saveProduct(product);
		return "redirect:/manager/list-product";
	}

	/////////// Delete Product //////////////
	@RequestMapping(value = "/delete-product/{productID}")
	public String deleteProduct(Model model, @PathVariable("productID") int productID) {
		ProductEntity delete = productService.findProductById(productID);
		if (delete.getId() > 0) {
			productService.deleteProduct(productID);
			return "redirect:/manager/list-product";
		} else {
			return "redirect:/manager/list-product";
		}
	}

	////////// Search Product ///////////
	@RequestMapping(value = "/searchProduct", method = RequestMethod.POST)
	public String searchProduct(Model model, @ModelAttribute("searchTx") String searchTx) {
		model.addAttribute("product", productService.searchProduct1(searchTx));
		return "/manager/list-product";
	}

	/////////// Product Detail ////////
	@RequestMapping(value = "/product-detail/{productID}")
	public String productDetail(Model model, @PathVariable("productID") int productID, HttpSession session) {
		ProductEntity product = productService.findProductById(productID);
		model.addAttribute("pr", product);
		return "manager/product-detail";
	}

//	////////////////////
//	
//	
//	
//	
//	PROMOTION
//	
//	
//	
//	
///////////////////////
	/////// List Promotion ////////////
	@RequestMapping(value = "/list-promotion")
	public String listPromotion(Model model) {
		List<ProductEntity> product = (List<ProductEntity>) productService.getAllProduct();
		model.addAttribute("product", product);
		return "manager/list-promotion";
	}

	//////// Add Promotion ////////////
	@RequestMapping("/add-promotion")
	public String viewFormAddPromotion(Model model) {
		PromotionEntity promotion = new PromotionEntity();
		model.addAttribute("promotion", promotion);
		model.addAttribute("product", productService.getAllProductAll());
		model.addAttribute("action", "manager/save-promotion");
		return "manager/promotion-form";
	}

	@RequestMapping(value = "/save-promotion", method = RequestMethod.POST)
	public String savePr(Model model, @ModelAttribute("promotion") PromotionEntity promotion) {
		promotionService.savePromotion(promotion);
		return "redirect:/manager/list-promotion";
	}

//	//////// Add Promotion /////////////
//	@RequestMapping(value = "/add-promotion", method = RequestMethod.POST)
//	public String addPromotionForm(Model model, @ModelAttribute("promotion") PromotionEntity promotion,
//			@RequestParam("files") MultipartFile[] files, HttpServletRequest request) {
//		if (promotion != null) {
//			if (files != null && files.length > 0) {
//				promotion.setImages(imageService.uploadImage(files, request));
//				promotionService.savePromotion(promotion);
//				if (promotion.getId() > 0) {
//					if (promotion.getImages().size() > 0) {
//						for (ImageEntity image : promotion.getImages()) {
//							image.setPromotion(promotion);
//							imageService.save(image);
//						}
//					}
//					model.addAttribute("message", "add Promotion successfully.");
//				} else {
//					model.addAttribute("message", "add Promotion fail.");
//
//				}
//			}
//		}
//		return "redirect:/manager/list-promotion";
//	}

	////////// Edit Promotion //////////
	@RequestMapping("/edit-promotion")
	public String editPromotionForm(Model model, @RequestParam("id") int id) {
		PromotionEntity promotion = promotionService.findPromotionByProductId(id);
		model.addAttribute("promotion", promotion);
		model.addAttribute("product", productService.getAllProductAll());
		model.addAttribute("action", "manager/edit-promotion");
		return "manager/promotion-form";
	}

	@RequestMapping(value = "/edit-promotion", method = RequestMethod.POST)
	public String editPromotion(Model model, @ModelAttribute("promotion") PromotionEntity promotion) {
		promotionService.savePromotion(promotion);
		return "redirect:/manager/list-promotion";
	}

	////////// Delete Promotion //////////
	@RequestMapping("/delete-promotion")
	public String delete(Model model, @RequestParam("id") int id) {
		promotionService.deletePromotion(id);
		return "redirect:/manager/list-promotion";
	}

	/////////// Search Promotion By Product Name ///////////
	@RequestMapping(value = "/searchPromotionByProductName", method = RequestMethod.POST)
	public String searchPromotion(Model model, @ModelAttribute("search") String search) {
		List<ProductEntity> product = (List<ProductEntity>) productRepository.findByProductName(search);
		model.addAttribute("product", product);
		return "/manager/list-promotion";
	}

	///////// find by date /////////
	@RequestMapping(value = "/searchDate", method = RequestMethod.POST)
	public String date(Model model, @RequestParam("from") String fromStr) {
		java.sql.Date from = java.sql.Date.valueOf(fromStr);
		List<ProductEntity> product = (List<ProductEntity>) productRepository.findByPromotionDate(from);
		model.addAttribute("product", product);
		return "/manager/list-promotion";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(List.class, "product", new CustomCollectionEditor(List.class) {
			@Override
			protected Object convertElement(Object element) {
				Integer id = null;
				if (element instanceof String && !((String) element).equals("")) {
					// From the JSP 'element' will be a String
					try {
						id = Integer.parseInt((String) element);
					} catch (NumberFormatException e) {
						System.out.println("Element was " + ((String) element));
						e.printStackTrace();
					}
				}
				return (id != null) ? productService.findProductById(id) : null;

			}
		});

	}

}
