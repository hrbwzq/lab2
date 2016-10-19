<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<style type="text/css">
table {
	border: 2px #CCCCCC solid;
	width: 360px;
}

td,th {
	height: 30px;
	border: #CCCCCC 1px solid;
}
</style>
</head>
<body>
       <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
	<img src="2.jpg" height="100%" width="100%"/>    
	</div>
	Book NAME : <s:property value="name" />
	<% 

		String name = (String)request.getAttribute("name");
		//out.println(name);
	
		//驱动程序名 
		String driverName = "com.mysql.jdbc.Driver";
		//数据库用户名 
		String userName = "m0n0o1y2wl";
		//密码 
		String userPasswd = "mkm2k25l2211y5ljy0yh5hiwymi2x0x1l2jz4022";
		//数据库名 
		String dbName = "app_wzqlibrary";
		//表名 
		String tableName = "book";
		//联结字符串 
		String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/" + dbName + "?user="
				+ userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url);
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
		sql="delete from book where Title=?";
		PreparedStatement ps=connection.prepareStatement(sql);
		ps.setString(1,name);
		ps.executeUpdate();
		ps.close();
		
		//rs=statement.executeQuery("delete from book where Title="+name+"");
		
	
	%>
	<br>
	<br>
	<h2>删除成功<br>
	<a href="<%=basePath %>Booklist.jsp">Back</a></h2>
	
	
	
	
</body>
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">
</span></span>