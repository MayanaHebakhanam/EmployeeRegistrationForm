<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/register">
		<h1>Employee Registration Form</h1>
		<table border=2 width="40%">
			<tr>
				<th>Employee Field</th>
				<th>Data</th>
			</tr>
			<tr>
				<td>FirstName:</td>
				<td><input type="text" name="fname" required /></td>
			</tr>
			<tr>
				<td>LastName:</td>
				<td><input type="text" name="lname" required /></td>
			</tr>
			<tr>
				<td>Salary:</td>
				<td><input type="text" name="salary" required /></td>
			</tr>
			<tr>
				<td>Department:</td>
				<td><input type="text" name="department" required /></td>
			</tr>
			<tr>
				<td>Position:</td>
				<td><input type="text" name="position" required /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" required /></td>
			</tr>
			<tr>
				<td>Contact Number:</td>
				<td><input type="tel" name="contact" required /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>