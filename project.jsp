<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Project projectDetails = new Project();
	int project_id = Integer.parseInt(request.getParameter ("project_id"));
	HashMap Values =  projectDetails.getProjectDetails(project_id);	
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Project Form</h2>
        <form action="model/project.jsp" method="post">
          <div class="half_width">
            <label for="email">Project Name<span>*</span></label>
            <input type="text" name="project_title" id="project_title" value="<% out.print(Values.get("project_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Client Name<span>*</span></label>
            <input type="text" name="project_client_name" id="project_client_name" value="<% out.print(Values.get("project_client_name")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Project Type<span>*</span></label>
            <select style="height: 40px; width:300px" name = "project_type_id" id = "project_type_id" required>
            	<% out.print(projectDetails.getProjectTypeOption((Integer) Values.get("project_type_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Project Manager<span>*</span></label>
            <select style="height: 40px; width:300px" name = "project_manager_id" id = "project_manager_id" required>
            	<% out.print(projectDetails.getEmployeeOption((Integer) Values.get("project_manager_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Frontend Technology<span>*</span></label>
            <input type="text" name="project_frontend" id="project_frontend" value="<% out.print(Values.get("project_frontend")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Database Technology<span>*</span></label>
            <input type="text" name="project_backend" id="project_backend" value="<% out.print(Values.get("project_backend")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="project_description" required><% out.print(Values.get("project_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Project">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="project_id" value="<% out.print(Values.get("project_id")); %>"/>
        </form>
        </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
