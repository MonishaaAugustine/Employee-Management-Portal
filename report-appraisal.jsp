<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Appraisal appraisalDetails = new Appraisal();
	ArrayList allAppraisal = appraisalDetails.getAllAppraisal("0");
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Employee Appraisal Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
							<th>Employee Code</th>
							<th>Employee Name</th>
              <th>Appraisal By</th>
              <th>Commincation</th>
							<th>Team</th>
							<th>Programming</th>
							<th>Write Up</th>
							<th>Client</th>
							<th>Database</th>
              <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
              <th>Action</th>
              <% } %>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allAppraisal.size();i++) 
			{ 
				HashMap AppraisalDetails = new HashMap();
				AppraisalDetails = (HashMap)allAppraisal.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(AppraisalDetails.get("appr_emp_id")); %></td>
				  <td><% out.print(AppraisalDetails.get("employee_first_name")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_manager_name")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_comm_point")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_team_point")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_prog_point")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_write_point")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_client_point")); %></td>
					<td><% out.print(AppraisalDetails.get("appr_database_point")); %></td>
				  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
				  <td> <a href="appraisal.jsp?appr_id=<% out.print(AppraisalDetails.get("appr_id")); %>">Edit</a> </td>
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
