<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jspf" %>
<div class="row justify-content-center">
  <div class="col-md-6">
    <div class="card card-shadow p-4">
      <h3 class="text-center mb-3">Create Account</h3>
      <p class="text-center text-muted mb-4">Register as a teacher to manage attendance</p>
      <form action="registerAction.jsp" method="post">
        <div class="row">
          <div class="mb-3 col-md-6">
            <label class="form-label">Name</label>
            <input type="text" class="form-control" name="name" placeholder="Your name" required>
          </div>
          <div class="mb-3 col-md-6">
            <label class="form-label">Email</label>
            <input type="email" class="form-control" name="email" placeholder="Your email" required>
          </div>
        </div>
        <div class="row">
          <div class="mb-3 col-md-6">
            <label class="form-label">Password</label>
            <input type="password" class="form-control" name="pass" placeholder="Choose a password" required>
          </div>
          <div class="mb-3 col-md-6">
            <label class="form-label">Confirm Password</label>
            <input type="password" class="form-control" name="cpass" placeholder="Re-enter password" required>
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label">Department</label>
          <input type="text" class="form-control" name="dept" placeholder="e.g. CSE, IT" required>
        </div>
        <div class="d-flex justify-content-between align-items-center mt-3">
          <a href="login.jsp" class="small">Already have an account? Login</a>
          <button type="submit" class="btn btn-success">Register</button>
        </div>
      </form>
    </div>
  </div>
</div>
<%@ include file="footer.jspf" %>
