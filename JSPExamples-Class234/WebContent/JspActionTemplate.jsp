<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

    <head>
        <title>Vedisoft</title>
        <link rel="stylesheet" href="images/VectorLover.css" type="text/css" />
    </head>

    <body>
        <div id="wrap">
            <jsp:include page="Header.jsp"  >
                <jsp:param name="menu1" value="Company services" />
                <jsp:param name="menu2" value="Contact us" />
            </jsp:include>
            <div id="content">
                <div id="main">
                    <h2>  Complex Template example of Jsp:include Action :</h2>
                </div>
                <jsp:include page="SideMenu.jsp" flush="true" />
            </div>
            <jsp:include page="Footer.jsp" flush="true" />
        </div>

    </body>
</html>
