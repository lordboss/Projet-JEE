package browsergame;

import java.util.Collection;

import javax.persistence.*;


@Entity
public class Player {
	
	@Id private String nickname;
	private String password;
	@ManyToMany(targetEntity=Building.class)
	@JoinTable(name="PLAYER_BUILDING", 
			joinColumns=@JoinColumn(name="PLAYER_ID"),
			inverseJoinColumns=@JoinColumn(name="BUILDING_ID"))
	private Collection buildings;
	@Embedded private PersonalInformation information;
	@Embedded private Ressources ressources;
	private int rank;
	private int score;
	@OneToMany Collection<Mail> mails;

	
	public String getPseudonyme() { return this.nickname; }
	public void setPseudonyme(String pseudonyme) { this.nickname = pseudonyme; }

	public String getPassword() { return this.password; }
	public void setPassword(String password) { this.password = password; }
	
	public Collection<Building> getBuildings() { return this.buildings; }
	public void setBuildings(Collection<Building> buildings) { this.buildings = buildings; }
	
	public PersonalInformation getPersonalInformation() { 
		return new PersonalInformation(information.getSurname(), information.getFirstname(), information.getCountry(), information.getEmail());
	}
	public void setPersonalInformation(PersonalInformation information) { 
		this.information.setSurname(information.getSurname());
		this.information.setFirstname(information.getFirstname());
		this.information.setEmail(information.getEmail());
		this.information.setCountry(information.getCountry());
	}
	
	public void setRessources(Ressources ressources) {
		
	}
	public Ressources getRessources() {
		return this.ressources;
	}
	
	public int getRank() { return this.rank; }
	public void setRank(int rank) { this.rank = rank; }
	
	public int getScore() { return this.score; }
	public void setScore(int score) { this.score = score; }
	
}	