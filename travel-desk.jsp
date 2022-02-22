<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Travel travelDetails = new Travel();
	int travel_id = Integer.parseInt(request.getParameter ("travel_id"));
	HashMap Values =  travelDetails.getTravelDetails(travel_id);	
%>
<script>
  jQuery(function() {
    jQuery( "#travel_from_date" ).datepicker({
      changeMonth: true,
      changeYear: true,
       yearRange: "-1:+2",
       dateFormat: 'd MM,yy'
    });
    jQuery( "#travel_to_date" ).datepicker({
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
      <h2>Pay Employee Travel</h2>
        <form action="model/travel.jsp" method="post">
		  <div id="empl_id">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "travel_employee_id" id="travel_employee_id" required>
            	<% out.print(travelDetails.getEmployeeOption((Integer) Values.get("travel_employee_id"))); %>
            </select>
          </div>
          <div class="half_width">
             <label for="email">Select Source<span>*</span></label>
            <select style="height: 40px; width:300px" name ="travel_source" required>
            	<% out.print(travelDetails.getCityOption((Integer) Values.get("travel_source"))); %>
            </select>
          </div>
          <div class="half_width">
             <label for="email">Select Destination<span>*</span></label>
            <select style="height: 40px; width:300px" name ="travel_destination" required>
            	<% out.print(travelDetails.getCityOption((Integer) Values.get("travel_destination"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">From Date<span>*</span></label>
            <input type="text" name="travel_from_date" id="travel_from_date" value="<% out.print(Values.get("travel_from_date")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">To Date<span>*</span></label>
            <input type="text" name="travel_to_date" id="travel_to_date" value="<% out.print(Values.get("travel_to_date")); %>" size="22" style="width:300px;" required>
          </div>
           <div class="half_width">
            <label for="email">Total Expenses<span>*</span></label>
            <input type="text" name="travel_amount" id="travel_amount" value="<% out.print(Values.get("travel_amount")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
             <label for="email">Travel Mode<span>*</span></label>
            <select style="height: 40px; width:300px" name ="travel_mode" required>
            	<% out.print(travelDetails.getModeOption((Integer) Values.get("travel_mode"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
            <textarea name="travel_description" required style="height:100px; width:300px"><% out.print(Values.get("travel_description")); %></textarea>
          </div>
          <div class="half_width" id="leve_sts">
            <label for="email">Status<span>*</span></label>
            <select style="height: 40px; width:300px" name = "travel_status">
				<option value="0">Please Select</option>
				<option value="1">Disapprove</option>
				<option value="2">Approve</option>
            </select>
          </div>
          
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Travel">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="travel_id" value="<% out.print(Values.get("travel_id")); %>"/>
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
		 jQuery('#travel_employee_id').val(<%=session.getAttribute("login_emp_id")%>);
		 jQuery('#empl_id').hide();
		 jQuery('#leve_sts').hide();
	</script>
<% } %>
<%@ include file="includes/footer.jsp" %>
