<%@page import="jquery_test.*" %>
<%
if(request.getParameter("statename")!=null)
{
        State s=new State(Integer.parseInt(request.getParameter("stateid")),request.getParameter("statename"));
        s.update();
	response.sendRedirect("state.jsp");
        return;
}
else
{
    State s=State.getRecord(Integer.parseInt(request.getParameter("stateid")));
%>
<h1>State</h1>
 <p>
<form name="frm" action="state_edit.jsp">
<table>
<tr class="row-a">
<th>
State Name :
</th>
<td>
    <input type="hidden" name="stateid" value="<%= s.getStateid() %>" />
<input type="text" name="statename" value="<%= s.getStatename() %>" />
</td>
</tr>
<tr class="row-b">
<td colspan="2" align="center">
<input type="submit" name="submit1" value="Update Records" class="button" />
</td>
</tr>
</table>
</form>
 </p>
<%
}
%>