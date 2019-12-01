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
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Path;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ivt.entities.AccountEntity;
import com.ivt.entities.Account_RoleEntity;
import com.ivt.entities.CategoryEntity;
import com.ivt.entities.ImageEntity;
import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.OrderEntity;
import com.ivt.entities.ProductEntity;
import com.ivt.entities.PromotionEntity;
import com.ivt.enums.AccountRole;
import com.ivt.enums.Gender;
import com.ivt.repositories.AccountRepository;
import com.ivt.repositories.AccountRoleRepository;
import com.ivt.repositories.OrderDetailRepository;
import com.ivt.repositories.ProductRepository;
import com.ivt.repositories.PromotionRepository;
import com.ivt.service.AccountRoleService;
import com.ivt.service.AccountService;
import com.ivt.service.CategoryService;
import com.ivt.service.ImageService;
import com.ivt.service.OrderService;
import com.ivt.service.ProductService;
import com.mysql.cj.Session;
import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

/**
 *
 * @author TuanHandSome
 */
@Controller
public class HomeController {

	@Autowired
	public JavaMailSender mailSender;
	@Autowired
	public ServletContext context;

	public StringBuilder textHtml = new StringBuilder();

	@Autowired
	public ProductService productService;
	@Autowired
	public CategoryService categoryService;
	@Autowired
	public ImageService imageService;
	@Autowired
	public AccountService accountService;
	@Autowired
	public AccountRepository accountRepository;
	@Autowired
	public OrderService orderService;
	@Autowired
	public ProductRepository productRepository;
	@Autowired
	public AccountRoleService accountRoleService;
	@Autowired
	public OrderDetailRepository orderDetailRepository;
	@Autowired
	public PromotionRepository promotionRepository;

	@RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
	public String viewHome(Model model, HttpSession session) {
		OrderEntity newOrder = new OrderEntity();
		List<OrderDetailEntity> orderDetailList = new ArrayList<OrderDetailEntity>();
		newOrder.setOrderDetailList(orderDetailList);
		session.setAttribute("newOrder", newOrder);

		List<ProductEntity> product = (List<ProductEntity>) productService.getAllProduct();
		if (product != null && product.size() > 0) {
			model.addAttribute("product", product);
			model.addAttribute("totalPage", productService.getAllProduct().get(0).getTotalProduct());
			model.addAttribute("category", categoryService.getAllCategory());

		} else {
			model.addAttribute("product", new ProductEntity());
			model.addAttribute("totalPage", 0);
		}

		return "home";
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

	////// PHAN TRANG PRODUCT ////////////////
	@RequestMapping("/list/{page}")
	public String listPage(Model model, @PathVariable("page") int page, HttpSession session) {
		List<ProductEntity> product = productService.getProducts(page);
		model.addAttribute("product", product);
		model.addAttribute("totalPage", productService.getAllProduct().get(0).getTotalProduct());

		List<CategoryEntity> category = (List<CategoryEntity>) categoryService.getAllCategory();
		model.addAttribute("category", category);
		return "home";
	}

	//////// Product Details/////////////
	@RequestMapping(value = "/product-detail/{productID}")
	public String productDetail(Model model, @PathVariable("productID") int productID, HttpSession session) {
		OrderEntity newOrder = new OrderEntity();
		List<OrderDetailEntity> ordetail = new ArrayList<OrderDetailEntity>();
		newOrder.setOrderDetailList(ordetail);
		session.setAttribute("newOrder", newOrder);

		ProductEntity product = productService.findProductById(productID);
		model.addAttribute("pr", product);

		List<ProductEntity> products = (List<ProductEntity>) productService.getAllProduct();
		model.addAttribute("product", products);

		return "productDetail";
	}

	////////// COMPARE PRODUCT BY CATEGORYID /////////////
	@RequestMapping("/compareProductbyCategory/{categoryID}")
	public String asdas(Model model, HttpSession session, @PathVariable("categoryID") int categoryID) {
		OrderEntity newOrder = new OrderEntity();
		List<OrderDetailEntity> detail = new ArrayList<OrderDetailEntity>();
		newOrder.setOrderDetailList(detail);
		session.setAttribute("newOrder", newOrder);

		List<ProductEntity> product = productService.findProductByCategoryId(categoryID);
		model.addAttribute("product", product);

		List<CategoryEntity> category = categoryService.getAllCategory();
		model.addAttribute("category", category);

		return "compareProduct";
	}

	@RequestMapping(value = "/wishList")
	public String wish(Model model, HttpSession session) {
		OrderEntity newOrder = new OrderEntity();
		List<OrderDetailEntity> detail = new ArrayList<OrderDetailEntity>();
		newOrder.setOrderDetailList(detail);
		session.setAttribute("newOrder", newOrder);
		return "wishList";
	}

	@RequestMapping(value = "/add-wishlist", method = RequestMethod.POST)
	public String wishList(Model model, @RequestParam("id") int id, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");

		ProductEntity product = productService.findProductById(id);
		OrderDetailEntity orderDetail = new OrderDetailEntity();
		orderDetail.setProduct(product);
		orderDetail.setOrder(newOrder);
		orderService.saveOrder(newOrder);
		session.removeAttribute("newOrder");

		session.setAttribute("newOrder", newOrder);
		return "wishList";
	}

	@RequestMapping(value = "/deleteWishlist", method = RequestMethod.POST)
	public String deleWish(Model model, @RequestParam(name = "id") int id) {
		ProductEntity product = productService.findProductById(id);
		List<ProductEntity> list = (List<ProductEntity>) new ProductEntity();
		if (product.getId() == id) {
			list.remove(id);
		}

		return "redirect:/add-wishlist";
	}

	/////// FIND PRODUCT BY CATEGORY BY ID ////////////
	@RequestMapping("/findProductByCategory/{categoryID}")
	public String findProductByCategory(Model model, @PathVariable("categoryID") int categoryID) {
		List<ProductEntity> products = productService.findProductByCategoryId(categoryID);
		model.addAttribute("product", products);

		List<CategoryEntity> category = categoryService.getAllCategory();
		model.addAttribute("category", category);
		return "home";
	}

	@RequestMapping(value = { "/upload" })
	public String singleUpload(Model model) {
		return "upload";
	}

	@RequestMapping("/login")
	public String viewLogin(Model model, @RequestParam(value = "error", required = false) boolean isError) {
		if (isError) {
			model.addAttribute("message", "login fail.");
		}
		return "login";
	}

	@RequestMapping("/multipleUpload")
	public String multipleUpload(Model model) {
		return "uploadMultiple";
	}

	@RequestMapping(value = "/emailform", method = RequestMethod.GET)
	public String showFormSentEmail(Model model) {
		return "emailForm";
	}

	@RequestMapping("/add-account")
	public String viewFormAccount(Model model) {
		AccountEntity account = new AccountEntity();
		List<Account_RoleEntity> roles = (List<Account_RoleEntity>) accountRoleService.getAccountRole();
		model.addAttribute("account", account);
		model.addAttribute("roles", roles);
		model.addAttribute("action", "add-account");
		model.addAttribute("gender", Gender.values());
		model.addAttribute("role", AccountRole.values());
		return "register";
	}

	@RequestMapping(value = "/add-account", method = RequestMethod.POST)
	public String addAccount(Model model, @ModelAttribute("account") AccountEntity account, HttpServletRequest request,
			@Value(value = "${fileForSendAccount}") String pathName, @RequestParam(value = "name") String name)
			throws IOException {
		accountService.saveAccount(account);
		if (account.getId() > 0) {
			model.addAttribute("message", "add Account successfully.");

		} else {
			model.addAttribute("message", "add Account fail.");

		}
		return "redirect:/home";
	}

	@RequestMapping("/active")
	public String ac(Model model) {
		return "success-active";
	}

	@RequestMapping(value = "/activeAccount", method = RequestMethod.POST)
	public String actiec(Model model, @RequestParam("id") int id) {
		AccountEntity accountEntity = accountService.findAccountById(id);
		accountEntity.setStatus(true);
		accountService.saveAccount(accountEntity);
		if (accountEntity.getId() > 0) {
			model.addAttribute("message", "Active Account successfully.");

		} else {
			model.addAttribute("message", "Active Account fail.");

		}
		return "success-active";
	}

	@RequestMapping(value = "/about")
	public String about(Model model) {
		return "about";
	}

	@RequestMapping(value = "/contact")
	public String contact(Model model) {
		return "contact";
	}

////////Add OrderProduct //////////
	@RequestMapping(value = "/add-orderProduct")
	public String addOrderProduct(Model model, HttpSession session) {
		OrderEntity newOrder = new OrderEntity();
		List<OrderDetailEntity> orderDetailList = new ArrayList<OrderDetailEntity>();
		newOrder.setOrderDetailList(orderDetailList);
		session.setAttribute("newOrder", newOrder);
		model.addAttribute("product", productService.getAllProduct());
		model.addAttribute("title", "List Product");
		return "manager/listOrder";
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
		OrderDetailEntity orderDetail = new OrderDetailEntity();
		orderDetail.setProduct(product);
		;
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
		return "cart";
	}

	@RequestMapping(value = "/deleteCart")
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
		return "cart";
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

	///////// More Order ////////////
	@RequestMapping(value = "/moreOrder")
	public String moreOrder(Model model, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		session.setAttribute("newOrder", newOrder);
		model.addAttribute("product", productService.getAllProduct());
		return "/home";
	}

	@RequestMapping(value = "/check-out")
	public String checkout(Model model, HttpSession session) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		newOrder.setTotalPrice(newOrder.getTotalPriceProduct(newOrder));
		session.setAttribute("newOrder", newOrder);
		model.addAttribute("account", new AccountEntity());
		model.addAttribute("genders", Gender.values());
		model.addAttribute("action", "save-orderProduct");
//		model.addAttribute("countries", countries);
		return "checkout";
	}

	@RequestMapping(value = "/save-orderProduct", method = RequestMethod.POST)
	public String saveOrderProduct(Model model, @ModelAttribute("account") AccountEntity account, HttpSession session,
			HttpServletRequest request) {
		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		List<OrderDetailEntity> detail = newOrder.getOrderDetailList();
		try {
			AccountEntity newAccount = accountService.saveAccount(account);
			newOrder.setAccount(newAccount);
			Date today = new Date();
			Date tomorow = new Date(today.getTime() + (1000 * 60 * 60 * 24 * 3));
			newOrder.setOrderDate(today);
			newOrder.setDeliveredDate(tomorow);
			orderService.saveOrder(newOrder);
		} catch (Exception e) {
		}
		session.removeAttribute("newOrder");

////////WHEN SAVE INFORMATION THE EMAIL WILL BE SENT TO YOUR EMAIL//////////
		// takes input from e-mail form
		String recipientAddress = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		// sends the e-mail
		mailSender.send(email);

		return "email-success";
	}

	@RequestMapping(value = "/submit_order", method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("account") AccountEntity account, BindingResult result,
			HttpSession session, HttpServletRequest request) {

		OrderEntity newOrder = (OrderEntity) session.getAttribute("newOrder");
		if (result.hasErrors()) {
			model.addAttribute("acccount", account);
			model.addAttribute("gender", Gender.values());
			return "checkout";
		}

		AccountEntity newAccount = accountService.saveAccount(account);
		newOrder.setAccount(newAccount);
		Date today = new Date();
		Date tomorow = new Date(today.getTime() + (1000 * 60 * 60 * 24 * 3));
		newOrder.setOrderDate(today);
		newOrder.setDeliveredDate(tomorow);
		newOrder.setOrderDetailList(orderDetailRepository.findByOrder(newOrder));
		try {
			orderService.saveOrderAccount(newOrder, newAccount);
		} catch (Exception e) {

		}
		session.removeAttribute("newOrder");

////////WHEN SAVE INFORMATION THE EMAIL WILL BE SENT TO YOUR EMAIL//////////
		// takes input from e-mail form
		String recipientAddress = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		// sends the e-mail
		mailSender.send(email);

		return "email-success";
	}

//////////Search Product ///////////
	@RequestMapping(value = "/searchProduct", method = RequestMethod.POST)
	public String searchProduct(Model model, @ModelAttribute("searchTx") String searchTx) {
		model.addAttribute("product", productService.searchProduct1(searchTx));
		List<CategoryEntity> category = categoryService.getAllCategory();
		model.addAttribute("category", category);

		return "/home";
	}

	@RequestMapping("/list-order")
	public String getOrder(Model model, HttpSession session) {
		List<OrderEntity> newOrder = (List<OrderEntity>) orderService.getAllOrder();
		session.setAttribute("newOrder", newOrder);

		return "email-success";
	}

}
