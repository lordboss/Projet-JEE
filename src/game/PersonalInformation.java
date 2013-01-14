package game;

import javax.persistence.*;
import java.util.Date;

@Embeddable @Access(AccessType.FIELD)
public class PersonalInformation {

	private String surname;
	private String firstname;
	private String country;
	private String email;
	private String city;
	private Date birthDate;
	private Date creationTime;
	private Date lastModification;
	private Date lastConnection;
	
	public PersonalInformation(String surname, String firstname, String country, String email, Date birthDate) {
		this.surname = surname;
		this.firstname = firstname;
		this.country = country;
		this.email = email;
		this.birthDate = birthDate;
		this.creationTime = new Date();
		this.lastConnection = new Date();
		this.lastModification = new Date();
	}
	
	public PersonalInformation() {};
	
	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public Date getLastModification() {
		return lastModification;
	}

	public void setLastModification(Date lastModification) {
		this.lastModification = lastModification;
	}

	public Date getLastConnection() {
		return lastConnection;
	}

	public void setLastConnection(Date lastConnection) {
		this.lastConnection = lastConnection;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getSurname() { return this.surname; }
	public void setSurname(String surname) { this.surname = surname; }
	
	public String getFirstname() { return this.firstname; }
	public void setFirstname(String firstname) { this.firstname = firstname; }
	
	public String getCountry() { return this.country; }
	public void setCountry(String country) { this.country = country; }
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) { this.email = email; }
	
}