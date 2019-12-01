package com.ivt.service;

import java.io.File;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.ivt.entities.AccountEntity;
import com.ivt.entities.OrderDetailEntity;
import com.ivt.entities.OrderEntity;

@Service
public class EmailService {

	@Autowired
	private JavaMailSender emailSender;
	

	public void sendEmailByAccountId(List<OrderDetailEntity> orderDetails, AccountEntity account, OrderEntity newOrder)
			throws MessagingException {

		MimeMessage message = emailSender.createMimeMessage();

		String string = "";
		String string1 = "";
		boolean multipart = true;
		
        for (int z = 0; z < orderDetails.size(); z++) {
            string1 = "<tr><td>" + z + "</td> <td>" + orderDetails.get(z).getProduct().getProductName() + "</td> <td>" + orderDetails.get(z).getQuantity() + "</td >"
                    + " <td $>" + orderDetails.get(z).getPrice() + "</td >"
                    + "<td>" + (orderDetails.get(z).getQuantity() * orderDetails.get(z).getPrice()) + "</td>"
                    + "</tr>";
            string = string + string1;
        }
        String orderDate = "<h4>Order Date :" + newOrder.getOrderDate() + "</h4>";
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "UTF-8");
        String thank = "<h4>\r\n"
                + "Thank you for your order\r\n"
                + ""
                + "</h4>";
        
        String message1 = "Goods will be shipped soon";
        String htmlMsg = "<!DOCTYPE html>\n"
                + "<html>\n"
                + "<head>\n"
                + "  <meta charset=\"utf-8\">"
                + "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                + "  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n"
                + "  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n"
                + "  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n"
                + "<style>\n"
                + "table, th, td {\n"
                + "  border: 1px solid black;\n"
                + "  border-collapse: collapse;\n"
                + "}\n"
                + ""
                + "</style>\n"
                + "</head>\n"
                + "<body>\n"
                + "\n"
                + "<div class=\"container\">\n"
                + "<h1 style='color:red;'>AppleTL</h1> "
                + "<img src='/JV31_Final_AppleTL/resources/img/blog/10.jpg' alt='AppleTL' style='float:left;width:50px;height:50px;'/>"
                + "  <h2 style='color:red;'>Your Order</h2>\n"
                + "<h4 style='padding-top:10px;'>" +orderDate+ "</h4>\n"
                + "  <p></p>                                                                                      \n"
                + "  <div class=\"table-responsive\">          \n"
                + "  <table style=\"width=50%;\" class=\"table\">\n"
                + "    <thead>\n"
                + "      <tr>\n"
                + "        <th>STT</th>\n"
                + "        <th>Name</th>\n"
                + "        <th>QuanTity</th>\n"
                + "        <th>Price</th>\n"
                + "<th>Total Price</th>"
                + "       "
                + "        "
                + "      </tr>\n"
                + "    </thead>\n"
                + "    <tbody>\n"
                + string
                + "    </tbody>\n"
                + "<tfoot>"
                + "		<tr>"
                + "<td colspan=\"4\">Total Price :</td>	"
                + "	<td $>" + newOrder.getTotalPrice() + "</td>"
                + "	</tr>"
                + "	</tfoot>"
                + "  </table>\n"
                + "  </div>\n"
                + "</div>\n"
                + thank + message1
                + "</body>\n"
                + "</html>";
        ;
        
        message.setContent(htmlMsg, "text/html;charset=UTF-8");

        helper.setTo(account.getEmail());
        

        helper.setSubject("AppleTL");

        this.emailSender.send(message);

	}

}
