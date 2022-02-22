<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Leave leaveDetails = new Leave();
	String leaveLabel = "Apply";
	int leave_id = Integer.parseInt(request.getParameter ("leave_id"));
	if(leave_id != 0) {
		leaveLabel = "Update";
	}
	HashMap Values =  leaveDetails.getLeaveDetails(leave_id);	
%>
<script>
  jQuery(function() {
    jQuery( "#leave_from_date" ).datepicker({
      changeMonth: true,
      changeYear: true,
       yearRange: "-1:+2",
       dateFormat: 'd MM,yy'
    });
    jQuery( "#leave_to_date" ).datepicker({
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
      <h2>Leave Application Form</h2>
        <form action="model/leave.jsp" method="post">
		  <div id="empl_id">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "leave_employee_id" id = "leave_employee_id" required>
            	<% out.print(leaveDetails.getEmployeeOption((Integer) Values.get("leave_employee_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Reason for leave<span>*</span></label>
            <input type="text" name="leave_reason" id="leave_reason" value="<% out.print(Values.get("leave_reason")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">From Date<span>*</span></label>
            <input type="text" name="leave_from_date" id="leave_from_date" value="<% out.print(Values.get("leave_from_date")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">To Date<span>*</span></label>
            <input type="text" name="leave_to_date" id="leave_to_date" value="<% out.print(Values.get("leave_to_date")); %>" size="22" style="width:300px;" required>
          </div> 
          <div id="leve_sts" class="half_width">
            <label for="email">Leave Status<span>*</span></label>
            <select style="height: 40px; width:300px" name = "leave_status">
              <option value="0">Please Select</option>
              <option value="1">Disapprove</option>
              <option value="2">Approve</option>
            </select>
          </div> 
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
		      	<textarea style="width:300px; height:100px;" name="leave_description" required><% out.print(Values.get("leave_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="<% out.print(leaveLabel); %> Leave">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="leave_id" value="<% out.print(Values.get("leave_id")); %>"/>
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
		 jQuery('#leave_employee_id').val(<%=session.getAttribute("login_emp_id")%>);
		 jQuery('#empl_id').hide();
		 jQuery('#leve_sts').hide();
	</script>
<% } %>
<%@ include file="includes/footer.jsp" %>
