package com.ivt.controller;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sendEmail")
public class SendEmailController {
	@Autowired
	private JavaMailSender mailSender;
	
	 @Autowired
	    private ServletContext context;

	    private StringBuilder textHtml = new StringBuilder();
	
	 @RequestMapping(method = RequestMethod.POST)
	    public String doSendEmail(HttpServletRequest request) {
	        // takes input from e-mail form
	        String recipientAddress = request.getParameter("recipient");
	        String subject = request.getParameter("subject");
	        String message = request.getParameter("message");
	        String date=request.getParameter("date");
	         
	        // prints debug info
	        System.out.println("To: " + recipientAddress);
	        System.out.println("Subject: " + subject);
	        System.out.println("Message: " + message);
	        System.out.println("Date" +date);
	         
	        
	        
	        
	        
	        // creates a simple e-mail object
	        SimpleMailMessage email = new SimpleMailMessage();
	        email.setTo(recipientAddress);
	        email.setSubject(subject);
	        email.setText(message);
	        email.setSentDate(new Date());
	         
	        // sends the e-mail
	        mailSender.send(email);
	         
	        // forwards to the view named "Result"
	        return "result";
	    }

}
