<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">
<%@ include file="db.jsp" %>
<%
String email = request.getParameter("email");
String pass = request.getParameter("pass");

PreparedStatement ps = con.prepareStatement(
    "SELECT * FROM users WHERE email=? AND password=?"
);
ps.setString(1, email);
ps.setString(2, pass);
ResultSet rs = ps.executeQuery();

if(rs.next()){
    session.setAttribute("email", email);
    response.sendRedirect("dashboard.jsp");
}else{
    out.print("Invalid Login!");
}
%>