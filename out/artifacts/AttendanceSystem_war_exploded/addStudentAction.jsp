<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">
<%@ include file="db.jsp" %>
<%
int roll = Integer.parseInt(request.getParameter("roll"));
String name = request.getParameter("name");
String course = request.getParameter("course");
String sem = request.getParameter("sem");

PreparedStatement ps = con.prepareStatement(
    "INSERT INTO students VALUES(?,?,?,?)"
);
ps.setInt(1, roll);
ps.setString(2, name);
ps.setString(3, course);
ps.setString(4, sem);
ps.executeUpdate();

response.sendRedirect("dashboard.jsp");
%>