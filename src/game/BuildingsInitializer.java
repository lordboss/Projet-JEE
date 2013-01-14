package game;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;



@Singleton
@Startup
public class BuildingsInitializer {

	@EJB PlayerService ps;
	@EJB BuildingService bs;
	
	@PersistenceUnit(unitName="jpa")
	private EntityManagerFactory factory;
	private EntityManager em;
	
	@PostConstruct
	public void setUp() {
		em = factory.createEntityManager();
		em.getTransaction().begin();
		Building silverMine = new Building();
		silverMine.setComments("Vous ne possédez pas ce bâtiment.");
		silverMine.setName("Mine d'argent");
		silverMine.setLevel(0);
		silverMine.setImagePath("silvermine.jpg");
		silverMine.setRessourcesNeeded(new Ressources(0,0,0,0));
		em.persist(silverMine);
	
		Building silverMine1 = new Building();
		silverMine1.setComments("Permet de récolter davantage d'argent.");
		silverMine1.setName("Mine d'argent");
		silverMine1.setLevel(1);
		silverMine1.setImagePath("silvermine.jpg");
		silverMine1.setRessourcesNeeded(new Ressources(0,100,0,0));
		em.persist(silverMine1);
		
		Building goldMine = new Building();
		goldMine.setComments("Vous ne possédez pas ce bâtiment.");
		goldMine.setName("Mine d'or");
		goldMine.setLevel(0);
		goldMine.setImagePath("goldmine.jpg");
		goldMine.setRessourcesNeeded(new Ressources(0,0,0,0));
		em.persist(goldMine);
		
		em.getTransaction().commit();
		
	}
	
}
