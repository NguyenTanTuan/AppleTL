<%-- 
    Document   : addNewCD
    Created on : Sep 16, 2019, 2:39:21 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" />
<title>CD</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1>CD Infomation</h1>
			</div>
		</div>
		<div class="row">
			<mvc:form action="${pageContext.request.contextPath}/${action}"
				method="post" class="form-horizental" modelAttribute="pr">
				<div class="form-group">
					<label class="control-label col-sm-2"> Product Name:</label>
					<div class="col-sm-10">
						<select name="product" multiple class="form-control">
							<c:forEach var="product" items="${product}">
								<option value="${product.id}"
									<c:forEach var="prod" items="${pr.product}">
                                                <c:if test="${product.id == prod.id}"> selected</c:if>
                                            </c:forEach>>${product.productName}
                                            
                                  </option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Pr des:</label>
					<div class="col-sm-10">
						<input type="text" name="description" class="form-control"
							value="${pr.description}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">pr discount:</label>
					<div class="col-sm-10">
						<input type="number" name="discount" class="form-control"
							value="<c:if test="${pr.discount != 0}">${pr.discount}</c:if>" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						<input type="submit" value="ADD" class="btn btn-success">
					</div>
				</div>
			</mvc:form>
		</div>
	</div>
</body>
</html>
