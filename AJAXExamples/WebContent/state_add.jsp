<%@page import="jquery_test.*" %>
<%
if(request.getParameter("statename")!=null)
{
        State s=new State(request.getParameter("statename"));
        s.add();
	response.sendRedirect("state.jsp");
        return;
}
else
{
%>
<h1>State</h1>
 <p>
<form name="frm" action="state_add.jsp">
<table>
<tr class="row-a">
<th>
State Name :
</th>
<td>
<input type="text" name="statename" />
</td>
</tr>
<tr class="row-b">
<td colspan="2" align="center">
<input type="submit" name="submit1" value="Add Records" class="button" />
</td>
</tr>
</table>
</form>
 </p>
<%
}
%>