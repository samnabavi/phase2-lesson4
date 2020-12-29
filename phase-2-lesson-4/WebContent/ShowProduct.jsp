<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ page language="java" import="com.model.Product"%>
	<%
		javax.servlet.http.HttpSession session = request.getSession(true);
	Product product = (Product) session.getAttribute("productse");
	String name = product.getName();
	String id = product.getId();
	String color = product.getColor();
	String year = product.getYear();

	response.getWriter().println("The name of the product is: " + name);
	response.getWriter().println("The id of the product is: " + id);
	response.getWriter().println("The color of the product is: " + color);
	response.getWriter().println("The year of the product is: " + year);
	%>
	
	</br>
	<a href="index.jsp">Check Other Items</a>
</body>
</html>


