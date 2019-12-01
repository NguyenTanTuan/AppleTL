<%-- 
    Document   : upload
    Created on : Jun 23, 2018, 10:27:01 AM
    Author     : AnhLe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload File Request Page</title>
    </head>
    <body>
        <form method="POST" action="uploadFile" enctype="multipart/form-data">
            File to upload: <input type="file" name="file"><br /> 
            <input type="submit" value="Upload"> Press here to upload the file!
        </form>	
        <br>

        <a href="multipleUpload">upload multiple file</a>
    </body>
    
    
</html>
