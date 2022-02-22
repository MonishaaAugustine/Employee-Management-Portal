<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Appraisal appraisalDetails = new Appraisal();
	int appr_id = Integer.parseInt(request.getParameter ("appr_id"));
	HashMap Values =  appraisalDetails.getAppraisalDetails(appr_id);	
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Employee Apraisal Form</h2>
        <form action="model/appraisal.jsp" method="post">
		  <div class="one_third first">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "appr_emp_id">
            	<% out.print(appraisalDetails.getEmployeeOption((Integer) Values.get("appr_emp_id"))); %>
            </select>
          </div>
          <div class="one_third first">
            <label for="email">Apraisal by Manager<span>*</span></label>
            <input type="text" name="appr_manager_name" id="appr_manager_name" value="<% out.print(Values.get("appr_manager_name")); %>" style="width:200px">
          </div>
          <div class="one_third first">
            <label for="email">Communcation Skill<span>*</span></label>
            <input type="text" name="appr_comm_point" id="appr_comm_point" value="<% out.print(Values.get("appr_comm_point")); %>" style="width:200px">
          </div>
          <div class="one_third">
            <label for="email">Team Player Skill<span>*</span></label>
            <input type="text" name="appr_team_point" id="appr_team_point" value="<% out.print(Values.get("appr_team_point")); %>" style="width:200px">
          </div>
          <div class="one_third">
            <label for="email">Programing Skill<span>*</span></label>
            <input type="text" name="appr_prog_point" id="appr_prog_point" value="<% out.print(Values.get("appr_prog_point")); %>" style="width:200px">
          </div>
		  <div class="one_third first">
            <label for="email">Written Skill<span>*</span></label>
            <input type="text" name="appr_write_point" id="appr_write_point" value="<% out.print(Values.get("appr_write_point")); %>" style="width:200px">
          </div>
          <div class="one_third">
            <label for="email">Client Handling<span>*</span></label>
            <input type="text" name="appr_client_point" id="appr_client_point" value="<% out.print(Values.get("appr_client_point")); %>" style="width:200px">
          </div>
          <div class="one_third">
            <label for="email">Database Skill<span>*</span></label>
            <input type="text" name="appr_database_point" id="appr_database_point" value="<% out.print(Values.get("appr_database_point")); %>" style="width:200px">
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Submit Apraisal">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="appr_id" value="<% out.print(Values.get("appr_id")); %>"/>
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
