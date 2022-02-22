<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Project projectDetails = new Project();
	ArrayList allProject = projectDetails.getAllProject();
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
              <th>Name</th>
              <th>Type</th>
              <th>Manager Name</th>
              <th>Frontend</th>
              <th>Database</th>
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
				  <td><% out.print(ProjectDetails.get("project_type")); %></td>
				  <td><% out.print(ProjectDetails.get("employee_name")); %></td>
				  <td><% out.print(ProjectDetails.get("project_frontend")); %></td>
				  <td><% out.print(ProjectDetails.get("project_backend")); %></td>
				  <td> <a href="project.jsp?project_id=<% out.print(ProjectDetails.get("project_id")); %>">Edit</a> </td>
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
