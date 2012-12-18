package browsergame;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.*;



@Stateless
public class BuildingServiceBean implements BuildingService {

	@PersistenceContext
	protected EntityManager em;
	
	public EntityManager getEntityManager() {
		return em;
	}
	
	public Building createBuilding(int id, Ressources ressourcesNeeded, int level, String comments, String name) {
		Building building = new Building();
		building.setRessourcesNeeded(ressourcesNeeded);
		building.setLevel(level);
		building.setComments(comments);
		building.setName(name);
		getEntityManager().persist(building);
		return building;
	}
	
	public Building findUpgradedBuilding(int id) {
		Building b = findBuilding(id);
		String name;
		int nextLevel;
		TypedQuery<Building> query = null;
		
		if (b != null) {
			name = b.getName();
			nextLevel = b.getLevel()+1;
			query = (TypedQuery<Building>) getEntityManager().createQuery("SELECT building FROM Building building WHERE building.name = " + name + " AND building.level = " + nextLevel);
		}
		
		return query.getSingleResult();
	}
			
	
	public List<Building> findAllBuildings() {
		TypedQuery<Building> query = getEntityManager().createQuery("SELECT b FROM Building b", Building.class);
		return query.getResultList();
	}
	
	public void removeBuilding(int id) {
		Building b = findBuilding(id);
		if (b != null) {
			getEntityManager().remove(b);
		}
	}
	
	public Building findBuilding(int id) {
		return getEntityManager().find(Building.class, id);
	}
	
	public void displayBuilding(int id) {
		
	}
}
	