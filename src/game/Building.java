package game;

import java.util.List;

import javax.persistence.*;



@Entity
@Table(name="building")
public class Building {

	@Id @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	private String name;
	private String comments;
	private int level;
	@Embedded private Ressources ressourcesNeeded;
	private String imagePath;
	@ManyToMany(mappedBy="buildings")
	private List<Player> owners;
	
	public int getId() { return this.id; }
	public void setId(int id) { this.id = id; }
	
	public String getName() { return this.name; }
	public void setName(String name) { this.name = name; }
	
	public String getComments() { return this.comments; }
	public void setComments(String comments) { this.comments = comments; }
	
	public int getLevel() { return this.level; }
	public void setLevel(int level) { this.level = level; }
	
	public Ressources getRessourcesNeeded() { return this.ressourcesNeeded; }
	public void setRessourcesNeeded(Ressources ressourcesNeeded) { this.ressourcesNeeded = ressourcesNeeded; }
	
	public String getImagePath() { return this.imagePath; }
	public void setImagePath(String imagePath) { this.imagePath = imagePath; }
	
	public List<Player> getOwners() { return this.owners; }
	public void setOwners(List<Player> owners) { this.owners = owners; } 
}