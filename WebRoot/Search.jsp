<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
        <title>Say Hello</title>
    </head>
    <body>
           <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
	<img src="1.jpg" height="100%" width="100%"/>    
	</div>
        <h3>Search book name: 
        <s:form action="Search">
            Name: <s:textfield name="name" />
            <s:submit />
        </s:form>
         
         <a href="<%=basePath %>SearchW.jsp">SearchWriter</a><br>
         <a href="<%=basePath %>HelloWorld.jsp">back</a><br>
         </h3>
    </body>
</html>
