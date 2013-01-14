package game;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.ejb.*;
import javax.persistence.*;


@Stateless
public class PlayerServiceBean implements PlayerService {

	@PersistenceUnit(unitName="jpa")
	private EntityManagerFactory factory;
	private EntityManager em;
	
	@EJB BuildingService bs;
	@EJB MailService ms;
	
	@PostConstruct
	public void setUp() {
		em = factory.createEntityManager();
	}
	
	@PreDestroy
	public void tearDown() {
		if (em != null) {
			em.close();
		}
		if (factory != null) {
			factory.close();
		}
	}
	
	public EntityManager getEntityManager() {
		return em;
	}
	
	public Player createPlayer(String nickname, String password, String surname, String firstname, String email, String country, Date birthDate) {
		Player p = new Player();
		p.setNickname(nickname);
		p.setPassword(password);
		List<Building> buildings = bs.findAllZeroBuildings();
		p.setBuildings(buildings);
		p.setMails(new ArrayList());
		p.setRessources(new Ressources());
		p.getRessources().setArgent(100);
		p.getRessources().setGold(100);
		p.getRessources().setMetal(100);
		p.getRessources().setCuivre(100);
		p.setPersonalInformation(new PersonalInformation(surname, firstname, country, email, birthDate));
		p.setRank(this.findAllPlayers().size()+1);
		p.setScore(0);
		em.getTransaction().begin();
		em.persist(p);
		em.getTransaction().commit();
		return p;
	}
	
	

	@Override
	public List<Player> findAllPlayers() {
		TypedQuery<Player> query = em.createQuery("SELECT p FROM Player p", Player.class);
		return query.getResultList();
	}

	@Override
	public void removePlayer(String pseudo) {
		em.getTransaction().begin();
		Player p = findPlayer(pseudo);
		if (p != null) {
			em.remove(p);
		}
		em.getTransaction().commit();
	}

	@Override
	public Player findPlayer(String pseudo) {
		return em.find(Player.class, pseudo);
	}

	@Override
	public void displayPlayer(String pseudo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Building> findBuildingsOf(String pseudo) {
		Player p = findPlayer(pseudo);
		if (p != null) {
			return p.getBuildings();
		} else {
			return null;
		}
	}

	@Override
	public void upgradeBuilding(String pseudo, int buildingId) {
		em.getTransaction().begin();
		Player p = findPlayer(pseudo);
		Building upgradedb = bs.findUpgradedBuilding(buildingId);
		Building b = bs.findBuilding(buildingId);
		List<Building> build = findBuildingsOf(pseudo);
		
		if (p != null && upgradedb != null) {
			Ressources rn = upgradedb.getRessourcesNeeded();
			int i = build.indexOf(b);
			p.getBuildings().set(i, upgradedb);
			upgradedb.getOwners().add(p);
			b.getOwners().remove(p);
			Ressources rp = p.getRessources();
			p.setRessources(new Ressources(rp.getGold()-rn.getGold(), rp.getArgent()-rn.getGold(),
								rp.getCuivre()-rn.getCuivre(), rp.getMetal()-rn.getMetal()));
		}
		
		if (p.getRessources().getArgent() < 0 || p.getRessources().getGold() < 0 
				|| p.getRessources().getCuivre() < 0 || p.getRessources().getMetal() < 0) {
			em.getTransaction().rollback();
		} else {
			em.getTransaction().commit();
		}
		
	}

	public List<Buildings> findBuildingPairsOf(String pseudo) {
		List<Buildings> bps = null;
		Player p = this.findPlayer(pseudo);
		List<Building> buildings = this.findBuildingsOf(pseudo);
		if (p != null) {
			bps = new ArrayList();
			for(Building b : buildings) {
				Buildings bp = new Buildings(b, bs.findUpgradedBuilding(b.getId()));
				bps.add(bp);
			}
		}
		return bps;
	}
	
}	