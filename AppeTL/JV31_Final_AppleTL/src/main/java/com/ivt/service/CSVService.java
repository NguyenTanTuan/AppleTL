package com.ivt.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.ivt.entities.OrderEntity;

@Service
public class CSVService {
		
	public void downloadCSVOrder(List<OrderEntity> newOrder , HttpServletResponse response) throws IOException {
		
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
		for (OrderEntity orderList : newOrder) {
			StringBuffer result = new StringBuffer();
			result.append(String.valueOf(orderList.getAccount().getUsername())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getAccount().getGender())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getAccount().getAddress())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getOrderDate())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getDeliveredDate())).append(COMMA_DELIMITER);
			result.append(String.valueOf(orderList.getTotalPrice()).toString()).append(COMMA_DELIMITER);

			rows.add(result.toString());
			rows.add(LINE_SEPARATOR);
			Iterator<String> iter = rows.iterator();
			while (iter.hasNext()) {
				String outputString = (String) iter.next();
				response.getOutputStream().print(outputString);
			}
			response.getOutputStream().flush();

		}
	}
	
	
}
