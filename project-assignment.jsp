<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	ProjectAssignment projectAssignmentDetails = new ProjectAssignment();
	int pra_id = Integer.parseInt(request.getParameter ("pra_id"));
	HashMap Values =  projectAssignmentDetails.getProjectAssignmentDetails(pra_id);	
%>
<script>
  jQuery(function() {
    jQuery( "#pra_assgindate" ).datepicker({
      changeMonth: true,
      changeYear: true,
       yearRange: "-1:+2",
       dateFormat: 'd MM,yy'
    });
  });
</script>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>ProjectAssignment Application Form</h2>
        <form action="model/projectAssignment.jsp" method="post">
		  <div id="empl_id">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "pra_emp_id" id = "pra_emp_id" required>
            	<% out.print(projectAssignmentDetails.getEmployeeOption((Integer) Values.get("pra_emp_id"))); %>
            </select>
          </div>
          <div id="empl_id">
            <label for="email">Select Project Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "pra_prj_id" id = "pra_prj_id" required>
            	<% out.print(projectAssignmentDetails.getProjectOption((Integer) Values.get("pra_prj_id"))); %>
            </select>
          </div>
          <div>
            <label for="email">Assignment Date<span>*</span></label>
            <input type="text" name="pra_assgindate" id="pra_assgindate" value="<% out.print(Values.get("pra_assgindate")); %>" size="22" style="width:300px;" required>
          </div> 
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="pra_id" value="<% out.print(Values.get("pra_id")); %>"/>
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
