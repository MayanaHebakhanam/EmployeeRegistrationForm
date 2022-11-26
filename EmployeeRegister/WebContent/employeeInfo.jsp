<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.employee.registerForm.Employee"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Employee has been registered Successfully</h1>
	<%
		String fn = request.getAttribute("firstName").toString();
		String ln = request.getAttribute("lastName").toString();
		String salary = request.getAttribute("salary").toString();
		String department = request.getAttribute("department").toString();
		String position = request.getAttribute("position").toString();
		String email = request.getAttribute("email").toString();
		String contact = request.getAttribute("contact").toString();
	%>
	<h4>Click below button to sort employees on the basis of their
		First names</h4>
	<form action="<%=request.getContextPath()%>/empList.jsp" method="post">
		<input type="submit" value="Click Me" />
	</form>


</body>
</html>