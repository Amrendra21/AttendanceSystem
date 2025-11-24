<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jspf" %>
<div class="row justify-content-center">
  <div class="col-md-6">
    <div class="card card-shadow p-4">
      <h3 class="mb-3">Add New Student</h3>
      <form action="addStudentAction.jsp" method="post">
        <div class="mb-3">
          <label class="form-label">Roll Number</label>
          <input type="text" class="form-control" name="roll" placeholder="e.g. 101" required>
        </div>
        <div class="mb-3">
          <label class="form-label">Name</label>
          <input type="text" class="form-control" name="name" placeholder="Student name" required>
        </div>
        <div class="mb-3">
          <label class="form-label">Semester</label>
          <input type="text" class="form-control" name="sem" placeholder="e.g. 3, 4, 5" required>
        </div>
        <div class="d-flex justify-content-between">
          <a href="dashboard.jsp" class="btn btn-outline-secondary">Back</a>
          <button type="submit" class="btn btn-success">Add Student</button>
        </div>
      </form>
    </div>
  </div>
</div>
<%@ include file="footer.jspf" %>
