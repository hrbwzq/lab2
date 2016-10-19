package tutorial;

import java.sql.*;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class sql extends ActionSupport {
    private ArrayList<Book> list = new ArrayList();;
    
    public  ArrayList<Book> getlist() {
        return list;
    }
    
    public void setlist(ArrayList<Book> list) {
        this.list = list;
    }
    public String execute() {
		
		 //声明Connection对象
       Connection con;
       //驱动程序名
       String driver = "com.mysql.jdbc.Driver";
       //URL指向要访问的数据库名mydata
       String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_wzqlibrary";
       //MySQL配置时的用户名
       String user = "m0n0o1y2wl";
       //MySQL配置时的密码
       String password = "mkm2k25l2211y5ljy0yh5hiwymi2x0x1l2jz4022";
       //遍历查询结果集
       //ArrayList<Book> list = new ArrayList();
       try {
           //加载驱动程序
           Class.forName(driver);
           //1.getConnection()方法，连接MySQL数据库！！
           con = DriverManager.getConnection(url,user,password);
           if(!con.isClosed())
               System.out.println("Succeeded connecting to the Database!");
           //2.创建statement类对象，用来执行SQL语句！！
           Statement statement = con.createStatement();
           //要执行的SQL语句
           String sql = "select * from student";
           //3.ResultSet类，用来存放获取的结果集！！
           ResultSet rs = statement.executeQuery(sql);
          // System.out.println("-----------------");
           //System.out.println("执行结果如下所示:");  
           //System.out.println("-----------------");  
           //System.out.println(" 性别" + "\t" + " 姓名");  
           //System.out.println("-----------------");  
            
           //String name = null;
           //String sex = null;
           //List<Book>list=new ArrayList<Book>();
           while(rs.next()){
               //获取stuname这列数据
           	Book book=new Book();
           	book.setISBN(rs.getInt("ISBN"));
           	book.setTitle(rs.getString("Title"));
           	book.setAuthorID(rs.getInt("AuthorID"));
           	book.setPublisher(rs.getString("Publisher"));
           	book.setPublishDate(rs.getString("PublishDate"));
           	book.setPrice(rs.getFloat("Price"));
           	list.add(book);
           	System.out.println(rs.getInt("ISBN") + " " + rs.getString("Title")+" "+rs.getInt("AuthorID")+" "+rs.getString("Publisher")+" "+rs.getString("PublishDate")+" "+rs.getFloat("Price"));
           	
           }
           rs.close();
           con.close();
       } catch(ClassNotFoundException e) {   
           //数据库驱动类异常处理
           System.out.println("Sorry,can`t find the Driver!");   
           e.printStackTrace();   
           } catch(SQLException e) {
           //数据库连接失败异常处理
           e.printStackTrace();  
           }catch (Exception e) {
           // TODO: handle exception
           e.printStackTrace();
       }finally{
           System.out.println("数据库数据成功获取！！");
       }
    	 
        return SUCCESS;
    }
}



