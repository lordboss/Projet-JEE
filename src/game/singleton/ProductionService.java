package game.singleton;

import game.buildings.Building;
import game.entities.Player;
import game.stateless.BuildingService;
import game.stateless.PlayerService;
import game.stateless.ResourceService;

import java.util.List;
import java.util.concurrent.*;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.ejb.Startup;


@Singleton
@Startup
public class ProductionService {

	@EJB PlayerService ps;
	@EJB ResourceService rs;
	@EJB BuildingService bs;
	
	@Resource ScheduledExecutorService exec;
	
	@PostConstruct
	public void setUp() {
		exec = Executors.newSingleThreadScheduledExecutor();
		exec.scheduleAtFixedRate(new Runnable() {
			  @Override
			  public void run() {
				  List<Player> players = ps.findAll();
				  for(Player player : players) {
					  List<Building> buildings = bs.getBuildings(player);
					  player.getResources().addResources(rs.getYield(player, buildings));
					  ps.updatePlayer(player);
				  }
			  }
			}, 0, 10, TimeUnit.SECONDS);	

	}
	
}