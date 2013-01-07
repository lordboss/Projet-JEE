package game;

import javax.persistence.*;



@Embeddable @Access(AccessType.FIELD)
public class Ressources {

	private int gold;
	private int argent;
	private int cuivre;
	private int metal;
	
	public Ressources() {
		
	}

	public Ressources(int gold, int argent, int cuivre, int metal) {
		this.gold = gold;
		this.argent = argent;
		this.cuivre = cuivre;
		this.metal = metal;
	}

	public int getGold() {
		return gold;
	}

	public void setGold(int gold) {
		this.gold = gold;
	}

	public int getArgent() {
		return argent;
	}

	public void setArgent(int argent) {
		this.argent = argent;
	}

	public int getCuivre() {
		return cuivre;
	}

	public void setCuivre(int cuivre) {
		this.cuivre = cuivre;
	}

	public int getMetal() {
		return metal;
	}

	public void setMetal(int metal) {
		this.metal = metal;
	}
}
