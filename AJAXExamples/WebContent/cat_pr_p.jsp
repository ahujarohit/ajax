<style type="text/css">
			/*demo page css*/
			body{ font: 62.5% "Trebuchet MS", sans-serif; margin: 50px;}

		</style>
<%@page language="java" import="jquery_test.*" %>
<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Category-wise Product Prices</title>
    <script src="jquery-1.4.2.js"></script>
  </head>
  <body>
      Category : <select onchange="$('#view').load('server5.jsp?x='+this.value)"><option>--select a category--</option><%= Category.getOptions() %></select>
      <br />
      <span id="view"></span>
  </body>
</html>
