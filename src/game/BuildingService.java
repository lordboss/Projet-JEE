package game;

import java.util.List;

import javax.ejb.Local;




@Local
public interface BuildingService {

	public Building createBuilding(int gold, int argent, int cuivre, int metal, int level, String comments, String name);
	public Building findUpgradedBuilding(int id);
	public List<Building> findAllBuildings();
	public void removeBuilding(int id);
	public Building findBuilding(int id);
	public void displayBuilding(int id);
	public List<Player> findOwnersOf(int id);
	public List<Building> findSilverMines();
	public List<Building> findAllZeroBuildings();
}