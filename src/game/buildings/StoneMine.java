package game.buildings;

import game.embedded.Resources;

import javax.persistence.*;


@Entity
public class StoneMine extends Building {

	private static final String name = "Carrière de pierre";
	private static final String comments = "Ce bâtiment vous permet de gagner de la pierre.";
	private static final Resources resourcesNeeded = new Resources(50, 15, 9, 5, 10);
	private static final Resources resourcesProvided = new Resources(5, 0, 0, 0, 0);
	private static final String imagePath = "img/building/stone.jpg";

	public String getName() {
		return name;
	}
	
	public String getComments() {
		return comments;
	}
	
	public String getImagePath() {
		return imagePath;
	}
	
	public Resources getResourcesNeeded() {
		return (Resources) resourcesNeeded.clone().multiply(getLevel()+1).multiply(getLevel()+1);
	}
	
	public Resources getResourcesProvided() {
		return (Resources) resourcesProvided.clone().multiply(getLevel());
	}

	@Override
	public int getPoints() {
		int points = 0;
		int lvl = getLevel();
		int sum = lvl*(lvl+1)*(2*lvl+1)/6;
		points += resourcesNeeded.getStone()*sum;
		points += resourcesNeeded.getGold()*sum;
		points += resourcesNeeded.getArgent()*sum;
		points += resourcesNeeded.getCuivre()*sum;
		points += resourcesNeeded.getMetal()*sum;
		return points;
	}
}
