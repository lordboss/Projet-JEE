package browsergame;

import javax.persistence.*;


@Embeddable @Access(AccessType.FIELD)
public class PersonalInformation {

	private String surname;
	private String firstname;
	private String country;
	private String email;
	
	public PersonalInformation(String surname, String firstname, String country, String email) {
		this.surname = surname;
		this.firstname = firstname;
		this.country = country;
		this.email = email;
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