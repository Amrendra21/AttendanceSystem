<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ include file="header.jspf" %>

<h3 class="mb-3">Mark Attendance</h3>

<form action="attendanceAction.jsp" method="post">

    <div class="row mb-3">
        <div class="col-md-4">
            <label class="form-label">Date</label>
            <input type="date" class="form-control" name="date" required>
        </div>
    </div>

    <div class="table-responsive mb-3">
        <table class="table table-hover align-middle">
            <thead>
            <tr>
                <th>Roll</th>
                <th>Name</th>
                <th>Semester</th>
                <th class="text-center">Status</th>
            </tr>
            </thead>

            <tbody>
            <%
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM student ORDER BY roll");

                while(rs.next()){
            %>
            <tr>
                <td><%= rs.getInt("roll") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("sem") %></td>

                <td class="text-center">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio"
                               name="status_<%=rs.getInt("roll")%>" value="Present" checked>
                        <label class="form-check-label">Present</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio"
                               name="status_<%=rs.getInt("roll")%>" value="Absent">
                        <label class="form-check-label">Absent</label>
                    </div>
                </td>
            </tr>
            <%
                }
                rs.close();
                st.close();
            %>
            </tbody>
        </table>
    </div>

    <button type="submit" class="btn btn-primary">Save Attendance</button>
</form>

<%@ include file="footer.jspf" %>
