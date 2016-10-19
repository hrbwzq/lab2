<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
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
	<img src="3.jpg" height="100%" width="100%"/>    
	</div>
	BOOK NAME : <h3><s:property value="name" /></h3>
	<% String name = (String)request.getAttribute("name");
		//out.println(name);	
	 %>
	<s:set name="s" value="name"/>
	<%
	
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
	%>
	<br>
	<br>
	<table align="center">
		<tr>
			<th>
				<%
					out.print("ISBN");
				%>
			</th>
			<th>
				<%
					out.print("Title");
				%>
			</th>
			<th>
				<%
					out.print("AuthorID");
				%>
			</th>
			<th>
				<%
					out.print("Publisher");
				%>
			</th>
			<th>
				<%
					out.print(" PublishDate");
				%>
			</th>
			<th>
				<%
					out.print(" Price");
				%>
			</th>
		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
	<%
			if(rs.getString(2).equals(name))
			{	
	 %>
			<td>
				<%
					out.print(rs.getInt(1));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getInt(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(5));
				%>
			</td>
			<td>
				<%
					out.print(rs.getFloat(6));
				%>
			</td>
		<%
			}
		%>
		<%
			}
		%>

		</tr>

	</table>
	<div align="center">
		<br> <br> <br>
		<%
			out.print("数据查询成功，恭喜你");
		%>
	</div>
	<%
		rs.close();
		statement.close();
		connection.close();
	%>
	 <a href="<%=basePath %>HelloWorld.jsp">back</a>
</body>
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">
</span></span>