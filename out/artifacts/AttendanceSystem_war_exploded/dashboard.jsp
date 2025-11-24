<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jspf" %>
<div class="row mb-4">
  <div class="col-12">
    <h2 class="fw-semibold">Dashboard</h2>
    <p class="text-muted">Quick actions for managing students and their attendance.</p>
  </div>
</div>
<div class="row g-3">
  <div class="col-md-4">
    <div class="card card-shadow p-4 h-100 d-flex flex-column justify-content-between">
      <div>
        <h5>Add Student</h5>
        <p class="text-muted small">Register a new student with roll, name, and semester.</p>
      </div>
      <a href="addStudent.jsp" class="btn btn-primary mt-2">Add Student</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-shadow p-4 h-100 d-flex flex-column justify-content-between">
      <div>
        <h5>Mark Attendance</h5>
        <p class="text-muted small">Select date and mark present/absent for students.</p>
      </div>
      <a href="attendance.jsp" class="btn btn-primary mt-2">Mark Attendance</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-shadow p-4 h-100 d-flex flex-column justify-content-between">
      <div>
        <h5>View Records</h5>
        <p class="text-muted small">View saved attendance records in table format.</p>
      </div>
      <a href="viewRecords.jsp" class="btn btn-primary mt-2">View Records</a>
    </div>
  </div>
</div>
<%@ include file="footer.jspf" %>
