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
		
		 //����Connection����
       Connection con;
       //����������
       String driver = "com.mysql.jdbc.Driver";
       //URLָ��Ҫ���ʵ����ݿ���mydata
       String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_wzqlibrary";
       //MySQL����ʱ���û���
       String user = "m0n0o1y2wl";
       //MySQL����ʱ������
       String password = "mkm2k25l2211y5ljy0yh5hiwymi2x0x1l2jz4022";
       //������ѯ�����
       //ArrayList<Book> list = new ArrayList();
       try {
           //������������
           Class.forName(driver);
           //1.getConnection()����������MySQL���ݿ⣡��
           con = DriverManager.getConnection(url,user,password);
           if(!con.isClosed())
               System.out.println("Succeeded connecting to the Database!");
           //2.����statement���������ִ��SQL��䣡��
           Statement statement = con.createStatement();
           //Ҫִ�е�SQL���
           String sql = "select * from student";
           //3.ResultSet�࣬������Ż�ȡ�Ľ��������
           ResultSet rs = statement.executeQuery(sql);
          // System.out.println("-----------------");
           //System.out.println("ִ�н��������ʾ:");  
           //System.out.println("-----------------");  
           //System.out.println(" �Ա�" + "\t" + " ����");  
           //System.out.println("-----------------");  
            
           //String name = null;
           //String sex = null;
           //List<Book>list=new ArrayList<Book>();
           while(rs.next()){
               //��ȡstuname��������
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
           //���ݿ��������쳣����
           System.out.println("Sorry,can`t find the Driver!");   
           e.printStackTrace();   
           } catch(SQLException e) {
           //���ݿ�����ʧ���쳣����
           e.printStackTrace();  
           }catch (Exception e) {
           // TODO: handle exception
           e.printStackTrace();
       }finally{
           System.out.println("���ݿ����ݳɹ���ȡ����");
       }
    	 
        return SUCCESS;
    }
}



