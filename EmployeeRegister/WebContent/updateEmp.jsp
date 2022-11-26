<%@ page import="java.sql.*"%>
<%@ page import="com.employee.registerForm.*"%>

<%
	String sql = "select * from employee";
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/empdb";
	String username = "root";
	String pswd = "Your Password";
	Connection con = DriverManager.getConnection(url, username, pswd);
	Statement st = con.prepareStatement(sql);
	ResultSet rs = st.executeQuery(sql);
	while (rs.next()) {
%>
<!DOCTYPE html>
<html>
<body>
	<h1>Enter details to update</h1>
	<form method="post"
		action="<%=request.getContextPath()%>/update-process.jsp">
		<br> First name:<br> <input type="text" name="first_name"
			value="<%=rs.getString("firstName")%>"> <br> Last name:<br>
		<input type="text" name="last_name"
			value="<%=rs.getString("lastname")%>"> <br> Salary:<br>
		<input type="text" name="salary" value="<%=rs.getString("salary")%>">
		<br> Department:<br> <input type="text" name="department"
			value="<%=rs.getString("department")%>"> <br> Position:<br>
		<input type="text" name="position"
			value="<%=rs.getString("position")%>"> <br> Email Id:<br>
		<input type="email" name="email"
			value="<%=rs.getString("email_address")%>"> <br>
		Contact:<br> <input type="text" name="contact"
			value="<%=rs.getString("contact_number")%>"> <br>
		<br> <input type="submit" value="Update">
	</form>

	<%}%>

</body>
</html>

