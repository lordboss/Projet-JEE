package browsergame;

import javax.persistence.*;



@Entity
public class Building {

	@Id @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	private String name;
	private String comments;
	private int level;
	@Embedded private Ressources ressourcesNeeded;

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
	
}