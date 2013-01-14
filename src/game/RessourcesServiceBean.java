package game;

import java.util.List;
import java.util.concurrent.*;
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;


@Singleton
@Startup
public class RessourcesServiceBean {

	@EJB PlayerService ps;
	@EJB BuildingService bs;
	
	@Resource ScheduledExecutorService exec;
	
	@PostConstruct
	public void setUp() {
		exec = Executors.newSingleThreadScheduledExecutor();
		exec.scheduleAtFixedRate(new Runnable() {
			  @Override
			  public void run() {
				  List<Player> players = ps.findAllPlayers();
				  for(Player p : players) {
						p.getRessources().addResources(new Ressources(10,10,10,10));
					}
				  
				  List<Building> silverMines = bs.findSilverMines();
				  for(Building m : silverMines) {
					  List<Player> owners = m.getOwners();
					  for(Player p : owners) {
						  Ressources r = p.getRessources();
						  r.setArgent(r.getArgent()+100);
					  }
				  }
			  }
			}, 0, 10, TimeUnit.SECONDS);	

	}
	
}