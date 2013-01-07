package game;

import java.util.Collection;
import java.util.List;

import javax.persistence.*;


@Entity
public class Player {
	
	@Id private String nickname;
	private String password;
	@ManyToMany(targetEntity=Building.class)
	@JoinTable(name="PLAYER_BUILDING", 
			joinColumns=@JoinColumn(name="PLAYER_ID"),
			inverseJoinColumns=@JoinColumn(name="BUILDING_ID"))
	private List buildings;
	@Embedded private PersonalInformation information;
	@Embedded private Ressources ressources;
	private int rank;
	private int score;
	@OneToMany List<Mail> mails;

	
	public String getNickname() { return this.nickname; }
	public void setNickname(String nickname) { this.nickname = nickname; }

	public String getPassword() { return this.password; }
	public void setPassword(String password) { this.password = password; }
	
	public List<Building> getBuildings() { return this.buildings; }
	public void setBuildings(List<Building> buildings) { this.buildings = buildings; }
	
	public PersonalInformation getPersonalInformation() { 
		return new PersonalInformation(information.getSurname(), information.getFirstname(), information.getCountry(), information.getEmail());
	}
	public void setPersonalInformation(PersonalInformation information) { 
		this.information = new PersonalInformation();
		this.information.setSurname(information.getSurname());
		this.information.setFirstname(information.getFirstname());
		this.information.setEmail(information.getEmail());
		this.information.setCountry(information.getCountry());
	}
	
	public void setRessources(Ressources ressources) {
		this.ressources = ressources;
	}
	
	public Ressources getRessources() {
		return this.ressources;
	}
	
	public int getRank() { return this.rank; }
	public void setRank(int rank) { this.rank = rank; }
	
	public int getScore() { return this.score; }
	public void setScore(int score) { this.score = score; }
	
	public List<Mail> getMails() { return this.mails; }
	public void setMails(List<Mail> mails) { this.mails = mails; }
	

}	