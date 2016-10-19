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
		</tr>
		<%
			}
		%>
	</table>

	<%
		rs.close();
		statement.close();
		connection.close();
	%>
	<%
		//驱动程序名 
		driverName = "com.mysql.jdbc.Driver";
		//数据库用户名 
		userName = "m0n0o1y2wl";
		//密码 
		userPasswd = "mkm2k25l2211y5ljy0yh5hiwymi2x0x1l2jz4022";
		//数据库名 
		dbName = "app_wzqlibrary";
		//表名 
		tableName = "author";
		//联结字符串 
		url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/" + dbName + "?user="
				+ userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(url);
		statement = connection.createStatement();
		sql = "SELECT * FROM " + tableName;
		rs = statement.executeQuery(sql);
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
	<%
		rs.close();
		statement.close();
		connection.close();
	%>	 
	<div align="center">
	   <s:form action="addBook">
            <s:textfield label ="ISBN(int)" name="ISBN" />
            <s:textfield label="Title(String)" name=" Title" />
            <s:textfield label="AuthorID(int) must in table 'author'" name="AuthorID" />
            <s:textfield label="Publisher(String)" name="Publisher" />
            <s:textfield label="PublishDate(String)" name="PublishDate" />
            <s:textfield label="Price(float)" name="Price" />
            <s:submit />
       </s:form>
	 
	  
	 
	<h2> <a href="<%=basePath %>Booklist.jsp">Back</a><br>	 </h2>
	</div>
</body>
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">
</span></span>