<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Leave leaveDetails = new Leave();
	String leaveStatus = "";
	String employeeID = "0";
	if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("2")) {
		employeeID = (String) session.getAttribute("login_emp_id");
	}
	ArrayList allLeave = leaveDetails.getAllLeave(request.getParameter ("emp_id"),employeeID);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Leave Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Employee Code</th>
              <th>Name</th>
              <th>Reason</th>
              <th>From Date</th>
              <th>To Date</th>
              <th>Status</th>
              <% if(session.getAttribute("login_level") != null && (session.getAttribute("login_level").equals("1") || session.getAttribute("login_level").equals("2"))) { %>
              <th>Action</th>
              <% } %>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allLeave.size();i++) 
			{ 
				HashMap LeaveDetails = new HashMap();
				LeaveDetails = (HashMap)allLeave.get(i);
				if(LeaveDetails.get("leave_status").equals("1"))
					leaveStatus = "Disapproved";
				else if(LeaveDetails.get("leave_status").equals("2"))
					leaveStatus = "Approved";
				else
					leaveStatus = "Pending";
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(LeaveDetails.get("leave_employee_id")); %></td>
				  <td><% out.print(LeaveDetails.get("employee_name")); %></td>
				  <td><% out.print(LeaveDetails.get("leave_reason")); %></td>
				  <td><% out.print(LeaveDetails.get("leave_from_date")); %></td>
				  <td><% out.print(LeaveDetails.get("leave_to_date")); %></td>
				  <td><% out.print(leaveStatus); %></td>
				  <% if(session.getAttribute("login_level") != null && (session.getAttribute("login_level").equals("1") || session.getAttribute("login_level").equals("2"))) { %>
				  <td> <a href="leave.jsp?leave_id=<% out.print(LeaveDetails.get("leave_id")); %>">Edit</a> </td>
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
