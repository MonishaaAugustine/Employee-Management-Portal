<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	    <div style="width: 70%; float:left; margin-right:30px" id="login-home">
		  <h2><b>Welcome to Human Resource Management System (HRMS)</b></h2>
		  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("3")) { %>		
		  <ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="about-us.jsp">About Us</a></li>
			<li><a href="report-salary.jsp?emp_id=<%=session.getAttribute("login_emp_id")%>">My Salary Details</a></li>
			<li><a href="employee.jsp?employee_id=<%=session.getAttribute("login_emp_id")%>">My Account</a></li>
			<li><a href="change-password.jsp">Change Password</a></li>
			<li><a href="login.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		  
		 <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
		  <ul>
			<li><a href="report-employee.jsp">Employee Management</a></li>
			<li><a href="report-salary.jsp?emp_id=0">Salary Management</a></li>
			<li><a href="report-salary.jsp?emp_id=0">Employee Skill Management</a></li>
			<li><a href="report-salary.jsp?emp_id=0">Project Management</a></li>
			<li><a href="report-salary.jsp?emp_id=0">Project Resource Management</a></li>
			<li><a href="report-salary.jsp?emp_id=0">Appraisal Management</a></li>			
			<li><a href="change-password.jsp">Change Password</a></li>
			<li><a href="login.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		</div>
		<div style="float: left">
			<div><img src="images/demo/bulb.png" style="width: 250px; height:250px"></div><br>
			<div><img src="images/demo/idea.png" style="width: 250px; height:250px"></div>
		</div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
