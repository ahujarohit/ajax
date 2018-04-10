<%@page import="jquery_test.*" %>
<%
if(request.getParameter("stateid")!=null)
{
    State s=new State(Integer.parseInt(request.getParameter("stateid")));
    s.delete();
	response.sendRedirect("state.jsp");
        return;
}
%>