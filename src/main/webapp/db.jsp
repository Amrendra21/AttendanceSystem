<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/attendance_system",
            "root",
            "Amrendra@123"
        );
    } catch(Exception e) {
        out.print(e);
    }
%>