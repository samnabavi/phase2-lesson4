<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Provide item's details</h2>
<form method="post" action="ProductServlet">

Product Name:<input type="text" name="pName"><br/>
Product ID: <input type="text" name="pId"><br/>
Product Color: <input type="text" name="pColor"><br/>
Product Year: <input type="text" name="pYear"><br/>
<button type="submit">Save</button>

</form>
</body>
</html>