<%@page import="java.sql.Blob"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
	%>
	<%
		String emp_sql = "select *from employee";
		String url = "jdbc:mysql://localhost:3306/empdb";
		String username = "root";
		String pswd = "Your password";

		Connection con = DriverManager.getConnection(url, username, pswd);
		Statement st = con.prepareStatement(emp_sql);
		ResultSet rs = st.executeQuery(emp_sql);
	%>
	<h3>Employee List</h3>
	<%
		while (rs.next()) {
	%>
	Employee Name:<%=rs.getString(1)%><br/>
	Employee Designation:<%=rs.getString(5)%>
	<br />
	<br />
	<% }%>
	<br />
	<br />
	<h3>Enter the employee first name to remove from the list</h3>

	<form action="<%=request.getContextPath()%>/delEmp.jsp">
		FirstName: <input type="text" name="fname" /> <br /> <br /> 
		<input type="submit" value="Delete" /> <br /> <br />
	</form>


	<form action="<%=request.getContextPath()%>/updateEmp.jsp">
		<h3>Click below button to update employee details</h3>
		<input type="submit" Value="Click" />
	</form>
</body>
</html>