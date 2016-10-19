<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
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
		String tableName = "author";
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
					out.print("AuthorID");
				%>
			</th>
			<th>
				<%
					out.print("Age");
				%>
			</th>
			<th>
				<%
					out.print("Country");
				%>
			</th>
			<th>
				<%
					out.print("Name");
				%>
			</th>
		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
			<td>
				<%
					out.print(rs.getInt(1));
				%>
			</td>
			<td>
				<%
					out.print(rs.getInt(2));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(4));
				%>
			</td>
		</tr>
		<%
			}
		%>
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
	
	<h2>
	<a href="<%=basePath %>addAuthor.jsp">addAuthor</a><br>
	<a href="<%=basePath %>addBook.jsp">addBook</a><br>
	<a href="<%=basePath %>HelloWorld.jsp">back</a></h2>
</body>
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">
</span></span>