<%@page language="java" import="jquery_test.*,java.util.*" %>
<!DOCTYPE html>
                <script src="myjs.js"></script>
		<link type="text/css" href="css/redmond/jquery-ui-1.8.5.custom.css" rel="stylesheet" />
		<script type="text/javascript" src="jquery-ui-1.8.5.custom.min.js"></script>
                <script>
                    function view_stock(spanid,no)
                    {
                       view_page_qs_1('server6.jsp?x='+no,spanid);
                    }
                    </script>
			
  
	<br />
		<div id="tabs">
			<ul>
                            <%
                                int sel=0;
                                             Vector cat= Category.getRecords();
                                             for(int i=0;i<cat.size();i++)
                                                 {
                                                 Vector v1=(Vector)cat.elementAt(i);
                                                 int a=Integer.parseInt((String)v1.elementAt(0));
                                                 int b=Integer.parseInt(request.getParameter("x"));
                                                 if(a==b)
                                                     {
                                                        sel=i;
                                                     }
                                           %>
                                           <li><a href="#tabs-<%= i %>"><%= v1.elementAt(1) %></a></li>
                                <%
                                                }
                                            %>
			</ul>
                        
                        
                        <%
                        for(int i=0;i<cat.size();i++)
                                                 {
                                                 Vector v1=(Vector)cat.elementAt(i);
                        %>
                        <div id="tabs-<%= i %>">
                            <table>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Stock In Hand</th>
                                </tr>
                                <%
                                Products p=new Products();
                                Vector pro=p.getRecordsName(Integer.parseInt((String)v1.elementAt(0)));
                                for(int j=0;j<pro.size();j++)
                                    {
                                    Vector v2=(Vector)pro.elementAt(j);
                                    %>
                                    <tr>
                                        <td><%= v2.elementAt(1) %></td>
                                        <td>Rs.<%= v2.elementAt(2) %></td>
                                        <td><span id="s<%= v2.elementAt(0) %>"><a href="#" onclick="view_stock('s<%=v2.elementAt(0)%>',<%=v2.elementAt(0)%>)"> View </a></span></td>
                                    </tr>
                                    <%
                                }
                                %>
                            </table>
                        </div>
                    <%
                    }
                        %>

		</div>
                        
              <script type="text/javascript">
			$(function(){
				$('#tabs').tabs( {selected : <%= sel %> });
			});
		</script>