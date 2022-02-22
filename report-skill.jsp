<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Skill skillDetails = new Skill();
	ArrayList allSkill = skillDetails.getAllSkill("0");
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Employee Skill Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Employee Code</th>
              <th>Skill</th>
              <th>Grade</th>
              <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
              <th>Action</th>
              <% } %>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allSkill.size();i++) 
			{ 
				HashMap SkillDetails = new HashMap();
				SkillDetails = (HashMap)allSkill.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(SkillDetails.get("skill_employe_id")); %></td>
				  <td><% out.print(SkillDetails.get("skill_name")); %></td>
				  <td><% out.print(SkillDetails.get("skill_grade")); %></td>
				  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
				  <td> <a href="skill.jsp?skill_id=<% out.print(SkillDetails.get("skill_id")); %>">Edit</a> </td>
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
