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

	<% 
		//String userid="AuthorId";
        //String ss=session.getAttribute("AuthorId").toString();
       // int AuthorId=(int) AuthorId;
       // out.println(userid);

		String Title = (String)request.getAttribute("Title");
		//out.println(Title);
		
		String Publisher = (String)request.getAttribute("Publisher");
		//out.println(Publisher);
		
		String PublishDate = (String)request.getAttribute("PublishDate");
		//out.println(PublishDate);
			
		String Price1 = (String)request.getAttribute("Price");
		float Price=Float.parseFloat(Price1);
		//out.println(Price);
		
		
		String AuthorID1 = (String)request.getAttribute("AuthorID");
		//out.println(AuthorId);
		int AuthorID=Integer.parseInt(AuthorID1);
		//out.println(AuthorID);
	
		String ISBN1 = (String)request.getAttribute("ISBN");
		
		int ISBN=Integer.parseInt(ISBN1);
		//out.println(ISBN);
	
	
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
		//String condition="insert into author values"+"("+no+","+"'"+zkzh+"'"+","+"'"+xm+"'"+","+"'"+sfzh+"'"+","+"'"+syx+"'"+","+"'"+fwx+"'"+","+zcj+","+yycj+")";sql.executeUpdate(condition);
		sql="insert into book values('" + ISBN + "','" + Title + "','" + AuthorID + "','" + Publisher+ "','" + PublishDate+ "','" + Price+ "')";
		//rs=statement.executeQuery("delete from book where Title="+name+"");
		int count = statement.executeUpdate(sql);
		
	
	%>
	<br>
	<br>
	
	<div align="center">
	SUCCESS<br>
	<h3>
	<a href="<%=basePath %>Booklist.jsp">BookList</a><Br>
	<a href="<%=basePath %>Writerlist.jsp">Back</a>
	</h3>
	</div>
	
	
	
</body>
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">
</span></span>