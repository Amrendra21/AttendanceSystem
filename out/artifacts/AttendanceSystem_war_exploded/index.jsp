<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Redirect to login page as default
    response.sendRedirect("login.jsp");
%>
