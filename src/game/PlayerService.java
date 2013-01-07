package game;

import java.util.Collection;
import java.util.List;

import javax.ejb.*;
import javax.persistence.EntityManager;


@Local
public interface PlayerService {

	public Player createPlayer(String nickname, String password, String surname, String firstname, String email, String country, int rank);
	public List<Player> findAllPlayers();
	public void removePlayer(String pseudo);
	public Player findPlayer(String pseudo);
	public void displayPlayer(String pseudo);
	public List<Building> findBuildingsOf(String pseudo);
	public void upgradeBuilding(String pseudo, int buildingId);
	public List<Buildings> findBuildingPairsOf(String pseudo);
}