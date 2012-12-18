package browsergame;

import java.util.Collection;
import java.util.List;

import javax.ejb.*;
import javax.persistence.*;


@Stateless
public class PlayerServiceBean implements PlayerService {

	@PersistenceContext
	protected EntityManager em;
	
	@EJB BuildingService bs;
	
	public EntityManager getEntityManager() {
		return em;
	}
	
	public Player createPlayer(String nickname, String password, String surname, String firstname, String email, String country, Collection<Building> buildings, int rank, int score, Ressources ressources) {
		Player p = new Player();
		p.setPseudonyme(nickname);
		p.setPassword(password);
		p.setPersonalInformation(new PersonalInformation(surname, firstname, country, email));
		return p;
	}

	@Override
	public List<Player> findAllPlayers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removePlayer(String pseudo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Player findPlayer(String pseudo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void displayPlayer(String pseudo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Player> findBuildingsOf(String pseudo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void upgradeBuilding(String pseudo, int buildingId) {
		// TODO Auto-generated method stub
		
	}	
		
}	