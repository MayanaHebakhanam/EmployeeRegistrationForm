<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/empdb";%>
<%!String user = "root";%>
<%!String psw = "Your password";%>
<%
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	Long salary = Long.parseLong(request.getParameter("salary"));
	String department = request.getParameter("department");
	String position = request.getParameter("position");
	String email = request.getParameter("email");
	String contact = request.getParameter("contact");

	Connection con = null;
	PreparedStatement ps = null;
	try {
		Class.forName(driverName);
		con = DriverManager.getConnection(url, user, psw);
		String sql = "Update employee SET firstname=?, lastName=?, salary=?, department=?, position=?, email_address=?, contact_Number=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, first_name);
		ps.setString(2, last_name);
		ps.setLong(3, salary);
		ps.setString(4, department);
		ps.setString(5, position);
		ps.setString(6, email);
		ps.setString(7, contact);
		int i = ps.executeUpdate();

		if (i > 0) {
			out.print("Record Updated Successfully");
		} else {
			out.print("There is a problem in updating Record.");
		}
	} catch (SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
%>