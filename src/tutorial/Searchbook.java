package tutorial;

import com.opensymphony.xwork2.ActionSupport;

public class Searchbook extends ActionSupport {
    private String name;
    public int i=0;
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
        System.out.println(name);
        if(name.equals(""))
        	i=-1;
        else
        	i=1;
        
    }
    
    public String execute() {
    	//System.out.println(i);
    	if(i==1) 
    	{
    		
    		return "success";
    	}
    		
    	else
    		return "error";
    }
}
