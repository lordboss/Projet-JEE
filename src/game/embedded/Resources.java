package game.embedded;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.*;


@Embeddable @Access(AccessType.FIELD)
public class Resources implements Cloneable {

	private int stone;
	private int gold;
	private int argent;
	private int cuivre;
	private int metal;

	public Resources() {
		this(0, 0, 0, 0, 0);
	}
	
	public Resources(int stone, int gold, int argent, int cuivre, int metal) {
		this.stone = stone;
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

	public int getStone() {
		return stone;
	}

	public void setStone(int stone) {
		this.stone = stone;
	}
	
	public Resources addResources(Resources resources) {
		this.stone += resources.getStone();
		this.metal += resources.getMetal();
		this.cuivre += resources.getCuivre();
		this.gold += resources.getGold();
		this.argent += resources.getArgent();
		return this;
	}
	
	public Resources multiply(int factor) {
		this.metal *= factor;
		this.cuivre *= factor;
		this.gold *= factor;
		this.argent *= factor;
		this.stone *= factor;
		return this;
	}
	
	public Map<String, Integer> getList() {
		Map<String, Integer> l = new HashMap<String, Integer>();
		l.put("metal", metal);
		l.put("cuivre", cuivre);
		l.put("gold", gold);
		l.put("argent", argent);
		l.put("stone", stone);
		return l;
	}
	
	@Override
	public Resources clone() {
		try {
			return (Resources) super.clone();
		} catch (CloneNotSupportedException e) {
			// Ceci ne devrait jamais arriver (on implémente Cloneable)
			throw new IllegalStateException(e);
		}
	}
}
