package game.embedded;

import javax.persistence.*;
import java.util.Date;

@Embeddable @Access(AccessType.FIELD)
public class PersonalInformation {

	private String lastname;
	private String firstname;
	private String country;
	private String email;
	private String city;
	private Date birthdate;
	private Date creationTime;
	private Date lastModification;
	
	public PersonalInformation() {
		this.creationTime = new Date();
		this.lastModification = new Date();
	}
	
	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
		this.lastModification = new Date();
	}

	public Date getLastModification() {
		return lastModification;
	}

	public void setLastModification(Date lastModification) {
		this.lastModification = lastModification;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
		this.lastModification = new Date();
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
		this.lastModification = new Date();
	}

	public String getLastname() { return this.lastname; }
	public void setLastname(String lastname) {
		this.lastname = lastname;
		this.lastModification = new Date();
	}
	
	public String getFirstname() { return this.firstname; }
	public void setFirstname(String firstname) {
		this.firstname = firstname;
		this.lastModification = new Date();
	}
	
	public String getCountry() { return this.country; }
	public void setCountry(String country) {
		this.country = country;
		this.lastModification = new Date();
	}
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) {
		this.email = email;
		this.lastModification = new Date();
	}
	
}