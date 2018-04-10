<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if((username.equals("user1"))&&(password.equals("123456")))
        {
            out.println("<img src=\"yes.png\" />&nbsp;<b>You entered correct username and password</b>");
    }
    else
        {
            out.println("<img src=\"wrong.png\" />&nbsp;<b>Wrong username or password</b>");
    }
%>