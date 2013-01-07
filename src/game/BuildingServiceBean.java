package game;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.*;
import javax.ejb.Stateless;
import javax.persistence.*;



@Stateless
public class BuildingServiceBean implements BuildingService {

	@PersistenceUnit(unitName="jpa")
	private EntityManagerFactory factory;
	private EntityManager em;
	
	@PostConstruct
	public void setUp() {
		em = factory.createEntityManager();
	}
	
	@PreDestroy
	public void tearDown() {
		if (em != null) {
			em.close();
		}
		if (factory != null) {
			factory.close();
		}
	}
	
	public Building createBuilding(int gold, int argent, int cuivre, int metal, int level, String comments, String name) {
		Building building = new Building();
		building.setRessourcesNeeded(new Ressources());
		building.getRessourcesNeeded().setArgent(argent);
		building.getRessourcesNeeded().setArgent(gold);
		building.getRessourcesNeeded().setArgent(cuivre);
		building.getRessourcesNeeded().setArgent(metal);
		building.setLevel(level);
		building.setComments(comments);
		building.setName(name);
		building.setOwners(new ArrayList());
		em.getTransaction().begin();
		em.persist(building);
		em.getTransaction().commit();
		return building;
	}
	
	public List<Building> findAllZeroBuildings() {
		TypedQuery<Building> query = em.createQuery("SELECT b FROM Building b WHERE b.level = 0", Building.class);
		return query.getResultList();
	}
	
	public List<Building> findSilverMines() {
		TypedQuery<Building> query = em.createQuery("SELECT b FROM Building b WHERE b.name = 'Mine d''argent' AND b.level > 0", Building.class);
		return query.getResultList();
	}
	
	public Building findUpgradedBuilding(int id) {
		Building b = findBuilding(id);
		String name;
		Integer nextLevel;
		TypedQuery<Building> query = null;
		Building upgradedBuilding = null;
		
		if (b != null) {
			name = b.getName();
			nextLevel = b.getLevel()+1;
			query = (TypedQuery<Building>) em.createQuery("SELECT building FROM Building building WHERE building.name = :name AND building.level = :nextLevel")
											.setParameter("name", name)
											.setParameter("nextLevel", nextLevel);
		}
		try {
			upgradedBuilding = query.getSingleResult();
		} catch (NoResultException e) {
			upgradedBuilding = null;
		} finally {
			return upgradedBuilding;
		}
	}
			
	
	public List<Building> findAllBuildings() {
		TypedQuery<Building> query = em.createQuery("SELECT b FROM Building b", Building.class);
		return query.getResultList();
	}
	
	public void removeBuilding(int id) {
		em.getTransaction().begin();
		Building b = findBuilding(id);
		if (b != null) {
			em.remove(b);
		}
		em.getTransaction().commit();
	}
	
	public Building findBuilding(int id) {
		return em.find(Building.class, id);
	}
	
	public void displayBuilding(int id) {
		
	}

	@Override
	public List<Player> findOwnersOf(int id) {
		// TODO Auto-generated method stub
		List<Player> owners = null;
		Building b = this.findBuilding(id);
		if (b != null) {
			owners = b.getOwners();
		}
		return owners;
	}
}
	