<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.*"%>
<% 
	try{
	 	
           //1.getConnection()方法，连接MySQL数据库！！
           
       Connection con;
      
       //驱动程序名
       String driver = "com.mysql.jdbc.Driver";
       Class.forName(driver);
       //URL指向要访问的数据库名mydata
       String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_wzqlibrary";
       //MySQL配置时的用户名
       String user = "m0n0o1y2wl";
       //MySQL配置时的密码
       String password = "mkm2k25l2211y5ljy0yh5hiwymi2x0x1l2jz4022";
       con = DriverManager.getConnection(url,user,password);
       if(con!=null)
       {
       	out.print("yes");
       }
       else
       {
       out.print("NO");
       }
       
	}catch(ClassNotFoundException e) {   
           //数据库驱动类异常处理
           System.out.println("Sorry,can`t find the Driver!");   
           e.printStackTrace();   
           } catch(SQLException e) {
           //数据库连接失败异常处理
           e.printStackTrace();  
           }catch (Exception e) {
           // TODO: handle exception
           e.printStackTrace();
 }
%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is. <br>
  </body>
</html>
