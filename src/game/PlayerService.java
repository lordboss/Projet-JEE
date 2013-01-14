package game;

import java.util.Date;
import java.util.List;

import javax.ejb.*;


@Local
public interface PlayerService {

	public Player createPlayer(String nickname, String password, String surname, String firstname, String email, String country, Date birthDate);
	public List<Player> findAllPlayers();
	public void removePlayer(String pseudo);
	public Player findPlayer(String pseudo);
	public void displayPlayer(String pseudo);
	public List<Building> findBuildingsOf(String pseudo);
	public void upgradeBuilding(String pseudo, int buildingId);
	public List<Buildings> findBuildingPairsOf(String pseudo);
}