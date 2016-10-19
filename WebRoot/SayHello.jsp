<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
      <title>Say Hello</title>
 
    </head>
   <body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
	<img src="1.jpg" height="100%" width="100%"/>    
	</div>
      
        <h3>input your name: </h3>
        <br>
        <br>
        <s:form action="HelloWorld">
           <h3> Name: <s:textfield name="name" /></h3>
            <s:submit />
        </s:form>
    </body>
</html>
