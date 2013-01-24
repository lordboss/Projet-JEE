package game.stateless;

import java.util.List;

import game.embedded.Resources;
import game.entities.Player;
import game.buildings.Building;

public interface ResourceService {
	
	public Resources getBaseYield();
	public Resources getYield(Player player, List<Building> buildings);
	public boolean add(Player player, Resources resources);

}
