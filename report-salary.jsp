<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Salary salaryDetails = new Salary();
	ArrayList allSalary = salaryDetails.getAllSalary(request.getParameter ("emp_id"));
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Payment Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Employee Code</th>
              <th>Month</th>
              <th>Year</th>
              <th>Amount</th>
              <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
              <th>Action</th>
              <% } %>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allSalary.size();i++) 
			{ 
				HashMap SalaryDetails = new HashMap();
				SalaryDetails = (HashMap)allSalary.get(i);
				String month = salaryDetails.getMonth((Integer) SalaryDetails.get("sal_month"));
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(SalaryDetails.get("sal_employe_id")); %></td>
				  <td><% out.print(month); %></td>
				  <td><% out.print(SalaryDetails.get("sal_year")); %></td>
				  <td><% out.print(SalaryDetails.get("sal_amount")); %></td>
				  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
				  <td> <a href="salary.jsp?sal_id=<% out.print(SalaryDetails.get("sal_id")); %>">Edit</a> </td>
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
