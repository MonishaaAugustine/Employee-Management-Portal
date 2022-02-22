<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Employee employeeDetails = new Employee();
	ArrayList allEmployees = employeeDetails.getAllEmployee();
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Customer Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Employee Code</th>
              <th>Name</th>
              <th>Mobile</th>
              <th>Department</th>
              <th>Status</th>
              <th>Email</th>
	      <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allEmployees.size();i++) 
			{ 
				HashMap EmployeeDetails = new HashMap();
				EmployeeDetails = (HashMap)allEmployees.get(i);
				String department = employeeDetails.getDepartment((Integer) EmployeeDetails.get("employee_deparment"));
				String status = employeeDetails.getStatus((Integer) EmployeeDetails.get("employee_status"));
			%>
				<tr>
				  <td><% out.print(EmployeeDetails.get("employee_id")); %></td>
				  <td><% out.print(EmployeeDetails.get("employee_first_name")); %></td>
				  <td><% out.print(EmployeeDetails.get("employee_mobile")); %></td>
				  <td><% out.print(department); %></td>
				  <td><% out.print(status); %></td>
				  <td><% out.print(EmployeeDetails.get("employee_email")); %></td>
				  <td> <a href="employee.jsp?employee_id=<% out.print(EmployeeDetails.get("employee_id")); %>">Edit</a> </td>
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
