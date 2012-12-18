package browsergame;

import javax.persistence.*;



@Embeddable @Access(AccessType.FIELD)
public class Ressources {

	private int or;
	private int pierre;
	private int bois;
	
	public Ressources(int or, int pierre, int bois) {
		
	}
}
