package tutorial;

import com.opensymphony.xwork2.ActionSupport;

public class Author extends ActionSupport {
	private int AuthorID;
	private String Name;
	private int Age;
	private String Country;
	
    public int getAuthorID() {
        return AuthorID;
    }
    
    public void setAuthorID(int AuthorID) {
        this.AuthorID = AuthorID;
    }
    public String getName() {
        return Name;
    }
    
    public void setName(String Name) {
        this.Name = Name;
    }

    public int getAge() {
        return Age;
    }
    
    public void setAge(int Age) {
        this.Age = Age;
    }
    
    public String getCountry() {
        return Country;
    }
    
    public void setCountry(String Country) {
        this.Country = Country;
    }

}
