<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Travel travelDetails = new Travel();
	String travelStatus = "";
	String employeeID = "0";
	if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("2")) {
		employeeID = (String) session.getAttribute("login_emp_id");
	}
	ArrayList allTravel = travelDetails.getAllTravel(request.getParameter ("emp_id"),employeeID);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Travel Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Employee Code</th>
              <th>Name</th>
              <th>Source</th>
              <th>Destination</th>
              <th>From Date</th>
              <th>To Date</th>
              <th>Status</th>
              <% if(session.getAttribute("login_level") != null && (session.getAttribute("login_level").equals("1") || session.getAttribute("login_level").equals("2"))) { %>
              <th>Action</th>
              <% } %>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allTravel.size();i++) 
			{ 
				HashMap TravelDetails = new HashMap();
				TravelDetails = (HashMap)allTravel.get(i);
				String source = travelDetails.getCity((Integer) TravelDetails.get("travel_source"));
				String destination = travelDetails.getCity((Integer) TravelDetails.get("travel_destination"));
				
				if(TravelDetails.get("travel_status").equals("1"))
					travelStatus = "Disapproved";
				else if(TravelDetails.get("travel_status").equals("2"))
					travelStatus = "Approved";
				else
					travelStatus = "Pending";
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(TravelDetails.get("travel_employee_id")); %></td>
				  <td><% out.print(TravelDetails.get("employee_name")); %></td>
				  <td><% out.print(source); %></td>
				  <td><% out.print(destination); %></td>
				  <td><% out.print(TravelDetails.get("travel_from_date")); %></td>
				  <td><% out.print(TravelDetails.get("travel_to_date")); %></td>
				  <td><% out.print(travelStatus); %></td>
				  <% if(session.getAttribute("login_level") != null && (session.getAttribute("login_level").equals("1") || session.getAttribute("login_level").equals("2"))) { %>
				  <td> <a href="travel-desk.jsp?travel_id=<% out.print(TravelDetails.get("travel_id")); %>">Edit</a> </td>
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
