<%@page language="java" import="jquery_test.*" %>
<%
if(request.getParameter("x")!=null)
    {
        int x=Integer.parseInt(request.getParameter("x"));
        Products p=new Products();
        Products p1=p.getRecord(x);
        out.println(p1.getStockinhand());
}
%>