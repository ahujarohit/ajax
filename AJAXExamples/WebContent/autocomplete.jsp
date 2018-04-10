<%@page language="java" import="jquery_test.Products"%>
<% Products p=new Products(); %>
<!DOCTYPE html>
<html>
<head>
    <title>Autocomplete</title>
<link type="text/css" href="css/redmond/jquery-ui-1.8.5.custom.css" rel="stylesheet" />
<script type="text/javascript" src="jquery-1.4.2.js"></script>
<script type="text/javascript" src="jquery-ui-1.8.5.custom.min.js"></script>
  <script>
  $(document).ready(function() {
    $("input#autocomplete").autocomplete({
    source: [<%= p.getRecords() %>]
});
  });
  </script>
</head>
<body style="font-size:62.5%;">

    <font style="font-size: larger">Products :</font> <input id="autocomplete" />

</body>
</html>