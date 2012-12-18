package browsergame;

import java.util.List;

import javax.ejb.Local;




@Local
public interface BuildingService {

	public Building createBuilding(int id, Ressources ressourcesNeeded, int level, String comments, String name);
	public Building findUpgradedBuilding(int id);
	public List<Building> findAllBuildings();
	public void removeBuilding(int id);
	public Building findBuilding(int id);
	public void displayBuilding(int id);
	
}