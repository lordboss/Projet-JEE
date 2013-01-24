package game.stateless;

import game.entities.Player;

public interface PointService {
	public int getPoints(Player player);
	public void updatePoints();
	public void updateRanking();
	public void updateAll();
}
