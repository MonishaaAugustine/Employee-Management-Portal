<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Ticket ticketDetails = new Ticket();
	ArrayList allTicket = ticketDetails.getAllTicket();
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Ticket Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Ticket Code</th>
              <th>Title</th>
              <th>Type</th>
              <th>Project</th>
              <th>Employee</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allTicket.size();i++) 
			{ 
				HashMap TicketDetails = new HashMap();
				TicketDetails = (HashMap)allTicket.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(TicketDetails.get("ticket_id")); %></td>
				  <td><% out.print(TicketDetails.get("ticket_title")); %></td>
				  <td><% out.print(TicketDetails.get("tt_title")); %></td>
				  <td><% out.print(TicketDetails.get("project_title")); %></td>
				  <td><% out.print(TicketDetails.get("employee_name")); %></td>
				  <td><% out.print(TicketDetails.get("ticket_status")); %></td>
				  <td> <a href="ticket.jsp?ticket_id=<% out.print(TicketDetails.get("ticket_id")); %>">Edit</a> </td>
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
