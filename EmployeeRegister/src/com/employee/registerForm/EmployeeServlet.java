package com.employee.registerForm;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {

	private EmployeeDAO empDAO;

	public void init() {
		empDAO = new EmployeeDAO();
	}

	protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		String firstName = req.getParameter("fname");
		String lastName = req.getParameter("lname");
		Long salary = Long.parseLong(req.getParameter("salary"));
		String department = req.getParameter("department");
		String position = req.getParameter("position");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		
		Employee employee = new Employee();
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setSalary(salary);
		employee.setDepartment(department);
		employee.setContactNumber(contact);
		employee.setPosition(position);
		employee.setEmail(email);
		int id = 0;

		try {
			id = empDAO.registerEmployee(employee);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (id > 0) {
			req.setAttribute("firstName", employee.getFirstName());
			req.setAttribute("lastName", employee.getLastName());
			req.setAttribute("email", employee.getEmail());
			req.setAttribute("position", employee.getPosition());
			req.setAttribute("department", employee.getDepartment());
			req.setAttribute("contact", employee.getContactNumber());
			req.setAttribute("salary", employee.getSalary());

			RequestDispatcher rd = req.getRequestDispatcher("employeeInfo.jsp");
			rd.forward(req, res);

		}

	}

}
