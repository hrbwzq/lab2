<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
        <title>Say Hello</title>
    </head>
    <body>
           <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
	<img src="3.jpg" height="100%" width="100%"/>    
	</div>
        <h3>input the name of book </h3>
        <s:form action="Delete">
            Name: <s:textfield name="name" />
            <s:submit />
        </s:form>
        <h3>
        <a href="<%=basePath %>Booklist.jsp">back</a><br></h3>
    </body>
</html>
