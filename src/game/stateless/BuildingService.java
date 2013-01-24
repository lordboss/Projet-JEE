package game.stateless;

import java.util.List;

import javax.persistence.EntityManager;

import game.buildings.Building;
import game.entities.Player;

public interface BuildingService {

	public void newBuildings(EntityManager em, Player p);
	public List<Building> getBuildings(Player p);
	public String build(Player p, int id);
}
