<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Skill skillDetails = new Skill();
	int skill_id = Integer.parseInt(request.getParameter ("skill_id"));
	HashMap Values =  skillDetails.getSkillDetails(skill_id);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Add Employee Skill</h2>
        <form action="model/skill.jsp" method="post">
		  <div class="one_third first">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "skill_employe_id">
            	<% out.print(skillDetails.getEmployeeOption((Integer) Values.get("skill_employe_id"))); %>
            </select>
          </div>
          <div class="block clear"></div>
          <div>
            <label for="email">Skill Name<span>*</span></label>
            <input type="text" name="skill_name" id="skill_name" value="<% out.print(Values.get("skill_name")); %>" size="22" style="width:300px;">
          </div>
          <div>
            <label for="email">Skill Grade<span>*</span></label>
            <input type="text" name="skill_grade" id="skill_grade" value="<% out.print(Values.get("skill_grade")); %>" size="22" style="width:300px;">
          </div>
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			      <textarea style="width:300px; height:100px;" name="skill_description" required><% out.print(Values.get("skill_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Skill">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="skill_id" value="<% out.print(Values.get("skill_id")); %>"/>
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
