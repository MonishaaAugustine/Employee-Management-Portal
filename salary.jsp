<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Salary salaryDetails = new Salary();
	int sal_id = Integer.parseInt(request.getParameter ("sal_id"));
	String yearOption = "<option value='0'>Please Select</option>";
	HashMap Values =  salaryDetails.getSalaryDetails(sal_id);
	String selectedYear = (String) Values.get("sal_year");
	int startYear = 2000;
	for(int i=0;i<=20;i++)
	{
		String sel = "";
		if(selectedYear != "") {
			int yy = Integer.parseInt(selectedYear);
			if(yy==(startYear+i))
			{
				sel = "Selected";
			}
		}
		yearOption+="<option value='"+(startYear+i)+"' "+sel+">"+(startYear+i)+"</option>";
	}
	
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Pay Employee Salary</h2>
        <form action="model/salary.jsp" method="post">
		  <div class="one_third first">
            <label for="email">Select Employee Code<span>*</span></label>
            <select style="height: 40px; width:300px" name = "sal_employe_id">
            	<% out.print(salaryDetails.getEmployeeOption((Integer) Values.get("sal_employe_id"))); %>
            </select>
          </div>
          <div class="one_third first">
             <label for="email">Select Month<span>*</span></label>
            <select style="height: 40px; width:300px" name ="sal_month">
            	<% out.print(salaryDetails.getMonthOption((Integer) Values.get("sal_month"))); %>
            </select>
          </div>
          <div class="one_third first">
            <label for="email">Select Year<span>*</span></label>
            <select style="height: 40px; width:300px" name = "sal_year">
            	<% out.print(yearOption); %>
            </select>
          </div>
          <div class="block clear"></div>
          <div>
            <label for="email">Amount Paid<span>*</span></label>
            <input type="text" name="sal_amount" id="sal_amount" value="<% out.print(Values.get("sal_amount")); %>" size="22" style="width:300px;">
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Salary">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="sal_id" value="<% out.print(Values.get("sal_id")); %>"/>
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
