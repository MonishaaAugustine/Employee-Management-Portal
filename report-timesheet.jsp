<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Timesheet timesheetDetails = new Timesheet();
	String timesheetStatus = "";
	String employeeID = "0";
	if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("2")) {
		employeeID = (String) session.getAttribute("login_emp_id");
	}
	ArrayList allTimesheet = timesheetDetails.getAllTimesheet(request.getParameter ("emp_id"),employeeID);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Timesheet Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Employee Code</th>
              <th>Employee Name</th>
              <th>Project Code</th>
              <th>Working Hours</th>
              <th>Date</th>
              <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
              <th>Action</th>
              <% } %>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allTimesheet.size();i++) 
			{ 
				HashMap TimesheetDetails = new HashMap();
				TimesheetDetails = (HashMap)allTimesheet.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(TimesheetDetails.get("timesheet_employee_id")); %></td>
				  <td><% out.print(TimesheetDetails.get("employee_name")); %></td>
				  <td><% out.print(TimesheetDetails.get("timesheet_project_id")); %></td>
				  <td><% out.print(TimesheetDetails.get("timesheet_hours")); %></td>
				  <td><% out.print(TimesheetDetails.get("timesheet_date")); %></td>
				  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
				  <td> <a href="timesheet.jsp?timesheet_id=<% out.print(TimesheetDetails.get("timesheet_id")); %>">Edit</a> </td>
				  <% } %>
				</tr>
			<%
			}
			%>
			</tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
