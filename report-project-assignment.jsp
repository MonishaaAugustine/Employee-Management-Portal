<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	ProjectAssignment projectDetails = new ProjectAssignment();
	ArrayList allProject = projectDetails.getAllProjectAssignment();
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Project Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Project Code</th>
              <th>Project Name</th>
              <th>Employee Name</th>
              <th>Assign Date</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allProject.size();i++) 
			{ 
				HashMap ProjectDetails = new HashMap();
				ProjectDetails = (HashMap)allProject.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(ProjectDetails.get("project_id")); %></td>
				  <td><% out.print(ProjectDetails.get("project_title")); %></td>
				  <td><% out.print(ProjectDetails.get("employee_name")); %></td>
				  <td><% out.print(ProjectDetails.get("pra_assgindate")); %></td>
				  <td> <a href="project-assignment.jsp?pra_id=<% out.print(ProjectDetails.get("pra_id")); %>">Edit</a> </td>
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
