<%@page import="jquery_test.*" %>
<br />
City : &nbsp;&nbsp;
<select name="cityid">
<%= City.getOptionsByState(Integer.parseInt(request.getParameter("stateid"))) %>
</select>