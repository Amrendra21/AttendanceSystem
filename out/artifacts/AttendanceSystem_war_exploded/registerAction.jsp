<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ include file="db.jsp" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String pass = request.getParameter("pass");

PreparedStatement ps = con.prepareStatement(
    "INSERT INTO users(fullname,email,password) VALUES(?,?,?)"
);
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, pass);
ps.executeUpdate();

response.sendRedirect("login.jsp");
%>