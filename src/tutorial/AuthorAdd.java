package tutorial;

import com.opensymphony.xwork2.ActionSupport;

public class AuthorAdd extends ActionSupport {
	private String AuthorId;
	private String Age;
	private String Country;
    private String name;
    
    public String getAuthorId() {
        return AuthorId;
    }
    
    public void setAuthorId(String AuthorId) {
        this.AuthorId = AuthorId;
    }
    
    public String getAge() {
        return Age;
    }
    
    public void setAge(String Age) {
        this.Age = Age;
    }
    
    public String getCountry() {
        return Country;
    }
    
    public void setCountry(String Country) {
        this.Country = Country;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String execute() {
    	
        return SUCCESS;
    }

}
