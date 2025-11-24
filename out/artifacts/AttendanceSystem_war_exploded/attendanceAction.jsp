<link rel="stylesheet" href="css/style.css?v=<%= new java.util.Date().getTime() %>">

<%@ include file="db.jsp" %>

<%
    // Get date from form
    String dateStr = request.getParameter("date");

    if (dateStr == null || dateStr.trim().equals("")) {
        out.println("ERROR: Date is missing!");
        return;
    }

    java.sql.Date selectedDate = java.sql.Date.valueOf(dateStr);

    PreparedStatement ps = con.prepareStatement("SELECT roll FROM student ORDER BY roll");
    ResultSet rs = ps.executeQuery();

    PreparedStatement insertPS = con.prepareStatement(
            "INSERT INTO attendance (roll_no, date, status) VALUES (?, ?, ?)"
    );

    while (rs.next()) {
        int roll = rs.getInt("roll");
        String status = request.getParameter("status_" + roll);
1
        insertPS.setInt(1, roll);
        insertPS.setDate(2, selectedDate);
        insertPS.setString(3, status);

        try {
            insertPS.executeUpdate();   // Insert once per roll
        } catch (Exception e) {
            // Duplicate date-roll → ignore
        }
    }

    insertPS.close();
    rs.close();
    ps.close();

    response.sendRedirect("attendance.jsp?success=1");
%>
