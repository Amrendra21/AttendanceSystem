<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jspf" %>
<div class="row justify-content-center">
  <div class="col-md-5">
    <div class="card card-shadow p-4">
      <h3 class="text-center mb-3">Student Attendance System</h3>
      <p class="text-center text-muted mb-4">Login to continue</p>
      <form action="loginAction.jsp" method="post">
        <div class="mb-3">
          <label class="form-label">Email</label>
          <input type="text" class="form-control" name="email" placeholder="Enter your email" required>
        </div>
        <div class="mb-4">
          <label class="form-label">Password</label>
          <input type="password" class="form-control" name="pass" placeholder="Enter your password" required>
        </div>
        <div class="d-grid mb-2">
          <button type="submit" class="btn btn-primary">Login</button>
        </div>
        <p class="text-center small mb-0">
          New user?
          <a href="register.jsp">Create an account</a>
        </p>
      </form>
    </div>
  </div>
</div>
<%@ include file="footer.jspf" %>
