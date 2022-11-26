package com.employee.registerForm;

import java.sql.*;

public class EmployeeDAO {

	public int registerEmployee(Employee emp) throws ClassNotFoundException {
		int result = 0;
		String emp_sql = "INSERT INTO employee"
				+ " (firstName, lastName, salary, department, position, email_address, contact_Number) VALUES"
				+ " (?,?,?,?,?,?,?);";

		String url = "jdbc:mysql://localhost:3306/empdb";
		String username = "root";
		String pswd = "Your Password";

		Class.forName("com.mysql.cj.jdbc.Driver");
		try (Connection con = DriverManager.getConnection(url, username, pswd);
				PreparedStatement ps = con.prepareStatement(emp_sql)) {

			ps.setString(1, emp.getFirstName());
			ps.setString(2, emp.getLastName());
			ps.setLong(3, emp.getSalary());
			ps.setString(4, emp.getDepartment());
			ps.setString(5, emp.getPosition());
			ps.setString(6, emp.getEmail());
			ps.setString(7, emp.getContactNumber());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
		return result;
	}

	private void printSQLException(SQLException exc) {
		for (Throwable e : exc) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
			}
		}

	}
}
