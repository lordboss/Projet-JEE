package game.stateless;

import java.util.Iterator;
import java.util.List;

import game.embedded.Resources;
import game.buildings.Building;
import game.entities.Player;

import javax.ejb.*;


@Stateless
public class ResourceServiceImpl implements ResourceService {

	@EJB
	private PlayerService ps;
	
	public Resources getYield(Player player, List<Building> buildings) {
		Resources yield = new Resources();
		Iterator<Building> it = buildings.iterator();
		while(it.hasNext()) {
			Building building = it.next();
			yield.addResources(building.getResourcesProvided());
		}
		yield.addResources(getBaseYield());
		return yield;
	}

	@Override
	public Resources getBaseYield() {
		return new Resources(10, 10, 10, 10, 10);
	}

	@Override
	public boolean add(Player player, Resources resources) {
		Resources res = player.getResources().clone();
		res.addResources(resources);
		if (res.getStone() < 0) return false;
		if (res.getGold() < 0) return false;
		if (res.getArgent() < 0) return false;
		if (res.getCuivre() < 0) return false;
		if (res.getMetal() < 0) return false;
		player.getResources().addResources(resources);
		ps.updatePlayer(player);
		return true;
	}
}	