
<%
String menu1=request.getParameter("menu1");
String menu2=request.getParameter("menu2");
if(menu1==null && menu2==null){
menu1="About Us";
menu2="Support";
}

%>
<div id="header">

    <h1 id="logo-text"><a href="#" title="">Vedisoft: Java Web and Enterprise Technologies</a></h1>
</div>

<div  id="nav">
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#"><%=menu1%></a></li>
        <li><a href="#"><%=menu2%></a></li>
    </ul>
</div>


