<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ include file="header.jspf" %>

<h3 class="mb-3">Attendance Records</h3>

<div class="table-responsive">
    <table class="table table-striped align-middle">
        <thead>
        <tr>
            <th>Date</th>
            <th>Roll</th>
            <th>Name</th>
            <th>Semester</th>
            <th>Status</th>
        </tr>
        </thead>

        <tbody>
        <%
            PreparedStatement ps = con.prepareStatement(
                    "SELECT attendance.date AS date, attendance.roll_no AS roll_no, " +
                            "student.name AS name, student.sem AS sem, attendance.status AS status " +
                            "FROM attendance " +
                            "JOIN student ON attendance.roll_no = student.roll " +
                            "ORDER BY attendance.date DESC"
            );

            ResultSet rs = ps.executeQuery();
            while(rs.next()){
        %>

        <tr>
            <td><%= rs.getString("date") %></td>
            <td><%= rs.getInt("roll_no") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("sem") %></td>
            <td>
                <%
                    String status = rs.getString("status");
                %>
                <span class="badge
            <%= "Present".equalsIgnoreCase(status) ? "badge-status-present" : "badge-status-absent" %>">
            <%= status %>
          </span>
            </td>
        </tr>

        <%
            }
        %>
        </tbody>
    </table>
</div>

<%@ include file="footer.jspf" %>
