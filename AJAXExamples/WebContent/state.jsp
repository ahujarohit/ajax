<%@page contentType="text/html" pageEncoding="UTF-8" import="jquery_test.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form : State</title>
<script src="jquery-1.4.2.js" type="text/javascript"></script>
<link href="source_code/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="source_code/facebox.js" type="text/javascript"></script>
<script type="text/javascript" src="jquery.tablesorter.js"></script>
<script src="jquery.tablesorter.pager.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
      $('a[rel*=facebox]').facebox()
    })
	$(document).ready(function()
	{
		$("#table")
                .tablesorter()
                .tablesorterPager({container: $("#pager")}); 
	}
	);
</script>
<link rel="stylesheet" href="table/style.css" type="text/css" />
    </head>
    <body>
        <h1>Form : State</h1>
        <br />
        <a href="state_add.jsp" rel="facebox">Add New State...</a>
<br />
<br />
<table id="table" class="tablesorter" style="width: 500px">
<thead>
<tr>
<th>State Name</th>
<th>Operations</th>
</tr>
</thead>
<tbody>
<%
Vector v=State.getRecords();
for(int i=0;i<v.size();i++)
    {
    Vector v1=(Vector)v.elementAt(i);
	%>
	<tr>
            <td><%= v1.elementAt(1) %></td>
	<td>
        <a href="state_edit.jsp?stateid=<%= v1.elementAt(0) %>" rel="facebox">Edit</a>
	<a href="state_delete.jsp?stateid=<%= v1.elementAt(0) %>">Delete</a>
	</td>
	</tr>
	<%
}
%>
</tbody>
</table>
<br />
<br />
<div id="pager" class="pager">
	<form>
		<img src="icons/first.png" class="first"/>
		<img src="icons/prev.png" class="prev"/>
		<input type="text" class="pagedisplay"/>
		<img src="icons/next.png" class="next"/>
		<img src="icons/last.png" class="last"/>
		<select class="pagesize">
			<option selected="selected"  value="5">5</option>
			<option value="20">20</option>
			<option value="30">30</option>
			<option  value="40">40</option>
		</select>
	</form>
</div>
    </body>
</html>
