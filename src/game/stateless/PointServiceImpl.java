package game.stateless;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.Stateless;

import game.buildings.Building;
import game.embedded.Resources;
import game.entities.Player;

@Stateless
public class PointServiceImpl implements PointService {
	
	@EJB private BuildingService bs;
	@EJB private PlayerService ps;

	@Override
	public int getPoints(Player player) {
		int points = 0;
		Resources res = player.getResources();
		points += res.getStone();
		points += res.getGold();
		points += res.getArgent();
		points += res.getCuivre();
		points += res.getMetal();
		List<Building> buildings = bs.getBuildings(player);
		for (Building b : buildings) {
			points += b.getPoints();
		}
		return points;
	}

	@Override
	public void updatePoints() {
		List<Player> players = ps.findAll();
		for (Player p : players) {
			p.getStats().setPoints(getPoints(p));
			ps.updatePlayer(p);
		}
	}

	@Override
	public void updateRanking() {
		List<Player> players = ps.findAll();
		ps.sortByPoints(players);
		int rank = 1;
		for (Player p : players) {
			p.getStats().setRank(rank++);
			ps.updatePlayer(p);
		}
		
	}
	
	@Override
	public void updateAll() {
		List<Player> players = ps.findAll();
		for (Player p : players) {
			p.getStats().setPoints(getPoints(p));
		}
		ps.sortByPoints(players);
		int rank = 1;
		for (Player p : players) {
			p.getStats().setRank(rank++);
			ps.updatePlayer(p);
		}
	}
}
