package game.buildings;

import game.embedded.Resources;
import game.entities.Player;

import javax.persistence.*;

@Entity
public abstract class Building {

	@Id @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	@ManyToOne
	private Player owner;
	private int level;
	
	public int getId() { return this.id; }
	public void setId(int id) { this.id = id; }
	
	public Player getOwner() { return owner; }
	public void setOwner(Player owner) { this.owner = owner; }
	
	public int getLevel() { return level; }
	public void setLevel(int level) { this.level = level; }
	public void levelUp() { this.level++; }
	
	public abstract String getName();
	
	public abstract String getComments();
	
	public abstract String getImagePath();
	
	public abstract Resources getResourcesNeeded();
	
	public abstract Resources getResourcesProvided();
	
	public abstract int getPoints();
}
