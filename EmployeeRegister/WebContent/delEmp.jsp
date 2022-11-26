<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%  Class.forName("com.mysql.cj.jdbc.Driver"); %>
	<% int k=0;%>
	<% String str1=request.getParameter("fname"); %>
	<%
try{
   
    String sql="delete from employee where firstname='"+str1+"'" ;
    String url = "jdbc:mysql://localhost:3306/empdb";
	String username = "root";
	String pswd = "Your password";
	Connection connection = DriverManager.getConnection(url, username, pswd);
	Statement st=connection.createStatement();
	k=st.executeUpdate(sql);
}
catch(Exception e){
    e.printStackTrace();
  }
%>
	<%if(k>0){%>
	<%String str2="Successfully removed employee "+str1; %>
	<% out.println(str2); %>
	<% } %>

</body>
</html>