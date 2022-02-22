<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Ticket ticketDetails = new Ticket();
	int ticket_id = Integer.parseInt(request.getParameter ("ticket_id"));
	HashMap Values =  ticketDetails.getTicketDetails(ticket_id);	
%>
<script>
  jQuery(function() {
    jQuery( "#ticket_start_date" ).datepicker({
      changeMonth: true,
      changeYear: true,
       yearRange: "-1:+2",
       dateFormat: 'd MM,yy'
    });
    jQuery( "#ticket_due_date" ).datepicker({
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
      <h2>Create Ticket Form</h2>
        <form action="model/ticket.jsp" method="post">
          <div class="half_width">
            <label for="email">Ticket Title<span>*</span></label>
            <input type="text" name="ticket_title" id="ticket_title" value="<% out.print(Values.get("ticket_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Ticket Hours<span>*</span></label>
            <input type="text" name="ticket_hours" id="ticket_hours" value="<% out.print(Values.get("ticket_hours")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Project Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "ticket_project_id" id = "ticket_project_id" required>
            	<% out.print(ticketDetails.getProjectOption((Integer) Values.get("ticket_project_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "ticket_employee_id" id = "ticket_employee_id" required>
            	<% out.print(ticketDetails.getEmployeeOption((Integer) Values.get("ticket_employee_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Ticket Type<span>*</span></label>
            <select style="height: 40px; width:300px" name = "ticket_type_id" id = "ticket_type_id" required>
            	<% out.print(ticketDetails.getTicketTypeOption((Integer) Values.get("ticket_type_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Ticket Status<span>*</span></label>
            <select style="height: 40px; width:300px" name = "ticket_status" id = "ticket_status" required>
            	<% out.print(ticketDetails.getTicketStatusOption((Integer) Values.get("ticket_status"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Start Date<span>*</span></label>
            <input type="text" name="ticket_start_date" id="ticket_start_date" value="<% out.print(Values.get("ticket_start_date")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Due Date<span>*</span></label>
            <input type="text" name="ticket_due_date" id="ticket_due_date" value="<% out.print(Values.get("ticket_due_date")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="ticket_description" required><% out.print(Values.get("ticket_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Ticket">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="ticket_id" value="<% out.print(Values.get("ticket_id")); %>"/>
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
