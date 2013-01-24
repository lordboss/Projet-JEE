package game.stateless;

import game.embedded.PersonalInformation;
import game.embedded.Resources;
import game.embedded.Statistics;
import game.entities.Player;

import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import javax.ejb.*;
import javax.persistence.*;


@Stateless
public class PlayerServiceImpl implements PlayerService {

	@EJB private EntityService es;
	@EJB private BuildingService bs;
	@EJB private PointService ps;
	
	public Player create(String lastname, String firstname, String email, Date birthdate, String city, String country, String nickname, String password) {
		Player p = new Player();
		PersonalInformation info = new PersonalInformation();
		info.setLastname(lastname);
		info.setFirstname(firstname);
		info.setCity(city);
		info.setCountry(country);
		info.setEmail(email);
		info.setBirthdate(birthdate);
		p.setInformation(info);
		Statistics stats = new Statistics();
		p.setStats(stats);
		p.setNickname(nickname);
		p.setPassword(password);
		p.setResources(new Resources(100, 100, 100, 100, 100));
		if (nickname.equals("admin")) {
			p.setPermissions(1);
		} else {
			p.setPermissions(0);
		}
		EntityManager em = es.openTransaction();
		em.persist(p);
		bs.newBuildings(em, p);
		es.commitTransaction(em);
		ps.updateAll();
		return p;
	}
	
	@Override
	public Player find(String nickname) {
		EntityManager em = es.getEntityManager();
		Player player = em.find(Player.class, nickname);
		em.close();
		return player;
	}

	@Override
	public List<Player> findAll() {
		EntityManager em = es.getEntityManager();
		TypedQuery<Player> query = em.createQuery("SELECT p FROM Player p", Player.class);
		List<Player> players = query.getResultList();
		em.close();
		return players;
	}

	@Override
	public void remove(String nickname) {
		Player p = find(nickname);
		if (p != null) {
			EntityManager em = es.openTransaction();
			em.remove(p);
			es.commitTransaction(em);
		}
	}
	
	public boolean checkPwd(Player player, String password) {
		boolean ok = player.getPassword().equals(password);
		if (ok) {
			player.setLastConnection(new Date());
			this.updatePlayer(player);
		}
		return ok;
	}
	
	public void updatePlayer(Player player) {
		EntityManager em = es.openTransaction();
		em.merge(player);
		es.commitTransaction(em);
	}

	public void sortByPoints(List<Player> players) {
		Collections.sort(players, new Comparator<Player>( ){
			public int compare(Player p1, Player p2) {
				int i = p2.getStats().getPoints() - p1.getStats().getPoints();
				if (i < 0) {
					return -1;
				} else if (i > 0) {
					return 1;
				} else {
					return 0;
				}
			}
			
		});
	}

	public void sortByRank(List<Player> players) {
		Collections.sort(players, new Comparator<Player>( ){
			public int compare(Player p1, Player p2) {
				if (p1.getStats().getRank() == 0) {
					return 1;
				} else if (p2.getStats().getRank() == 0) {
					return -1;
				}
				int i = p1.getStats().getRank() - p2.getStats().getRank();
				if (i < 0) {
					return -1;
				} else if (i > 0) {
					return 1;
				} else {
					return 0;
				}
			}
			
		});
	}
}	