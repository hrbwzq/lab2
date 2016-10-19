<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
        <title>Hello</title>
    </head>
    <body>
       <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
	<img src="2.jpg" height="100%" width="100%"/>    
	</div>
    		<div align="center">

        <h2><s:property value="name" /></h2>
       
        <br>
        <br>



         <h3>what can i do for you<br>
        <br>
        <br>

        1.<a href="<%=basePath %>Search.jsp">Search</a><br>
        2.<a href="<%=basePath %>Booklist.jsp">Booklist</a><br>
        3.<a href="<%=basePath %>Writerlist.jsp">Writerlist</a><br>
        4.<a href="<%=basePath %>SayHello.jsp">Back</a><br>
        </h3>
        </div>

    </body>

</html>
