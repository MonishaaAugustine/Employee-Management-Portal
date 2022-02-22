<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Timesheet timesheetDetails = new Timesheet();
	int timesheet_id = Integer.parseInt(request.getParameter ("timesheet_id"));
	HashMap Values =  timesheetDetails.getTimesheetDetails(timesheet_id);
%>
<script>
  jQuery(function() {
    jQuery( "#timesheet_date" ).datepicker({
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
      <h2>Timesheet Entry Form</h2>
        <form action="model/timesheet.jsp" method="post">
		    <div id="empl_id" class="half_width">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "timesheet_employee_id" id = "timesheet_employee_id" required>
            	<% out.print(timesheetDetails.getEmployeeOption((Integer) Values.get("timesheet_employee_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Select Project Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "timesheet_project_id" required>
            	<% out.print(timesheetDetails.getProjectOption((Integer) Values.get("timesheet_project_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Work Title<span>*</span></label>
            <input type="text" name="timesheet_work_title" id="timesheet_work_title" value="<% out.print(Values.get("timesheet_work_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Total Working Hours<span>*</span></label>
            <input type="text" name="timesheet_hours" id="timesheet_hours" value="<% out.print(Values.get("timesheet_hours")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Date<span>*</span></label>
            <input type="text" name="timesheet_date" id="timesheet_date" value="<% out.print(Values.get("timesheet_date")); %>" size="22" style="width:300px;" required>
          </div> 
          <div class="half_width">
            <label for="email">Work Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="timesheet_description" required><% out.print(Values.get("timesheet_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Timesheet">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="timesheet_id" value="<% out.print(Values.get("timesheet_id")); %>"/>
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
<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("3")) { %>		
	<script>
		 jQuery('#timesheet_employee_id').val(<%=session.getAttribute("login_emp_id")%>);
		 jQuery('#empl_id').hide();
	</script>
<% } %>
<%@ include file="includes/footer.jsp" %>
