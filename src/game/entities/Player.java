package game.entities;

import game.embedded.PersonalInformation;
import game.embedded.Resources;
import game.embedded.Statistics;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.*;


@Entity
@Table(name="players")
public class Player {
	
	private static final SimpleDateFormat dateFormatter = new SimpleDateFormat("dd/mm/yyyy");
	
	@Id private String nickname;
	private String password;
	private Date lastConnection;
	@Embedded private PersonalInformation information;
	@Embedded private Resources resources;
	@Embedded private Statistics stats;
	private int permissions;
	
	public String getNickname() { return this.nickname; }
	public void setNickname(String nickname) { this.nickname = nickname; }

	public String getPassword() { return this.password; }
	public void setPassword(String password) { this.password = password; }
	
	public PersonalInformation getInformation() { 
		return (PersonalInformation) this.information;
	}
	public void setInformation(PersonalInformation information) { 
		this.information = information;
	}
	
	public void setResources(Resources resources) {
		this.resources = resources;
	}
	public Resources getResources() {
		return this.resources;
	}
	
	public Date getLastConnection() {
		return lastConnection;
	}
	public void setLastConnection(Date lastConnection) {
		this.lastConnection = lastConnection;
	}
	
	public Statistics getStats() {
		return stats;
	}
	public void setStats(Statistics stats) {
		this.stats = stats;
	}
	
	public int getPermissions() {
		return permissions;
	}
	public void setPermissions(int permissions) {
		this.permissions = permissions;
	}
	
	@Transient
	public String getBirthdateFormatted() {
		return dateFormatter.format(this.getInformation().getBirthdate());
	}
}	