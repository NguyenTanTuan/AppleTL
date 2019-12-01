<%-- 
    Document   : home
    Created on : Sep 16, 2019, 2:21:12 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" />
<title>JSP Page</title>
<style>
th {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12" style="text-align: center">
				<h3>All Categories</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12" style="text-align: center">
				<div class="table-responsive">
					<table class="table table-bordered">
						<tr>
							<th>Product name</th>
							<th>description</th>
							<th>discount</th>
							<!--                                 <th>startDate</th>
 -->
							<th>Acttion</th>
						</tr>
						<c:forEach var="product" items="${product}">
							<c:set var="check" value="0" />
							<c:forEach var="pr" items="${product.promotion}">
								<tr>
									<c:if test="${check == '0'}">
										<td rowspan="${product.promotion.size()}">${product.productName}</td>
										<c:set var="check" value="1" />
									</c:if>
									<td>${pr.description}</td>
									<td>${pr.discount}</td>
									<%--                                         <td>${pr.startDate}</td>
 --%>
									<td><a class="btn btn-danger"
										href="<c:url value="/manager/dele?id=${pr.id}"/>">DELETE</a> <a
										class="btn btn-success"
										href="<c:url value="/manager/update/${pr.id}"/>">UPDATE</a>
										<button
											onclick="location.href='<c:url value="/manager/delete-promotion?id=${pr.id}"/>'"
											data-toggle="tooltip" title="Trash" class="btn btn-danger">
											<i class="fa fa-trash-o" aria-hidden="true">xoa</i>
										</button></td>
								</tr>
							</c:forEach>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<a class="btn btn-primary col-sm-offset-5 col-sm-2"
				href="<c:url value="/manager/addPr"/>">ADD</a>
		</div>
	</div>
</body>
</html>
