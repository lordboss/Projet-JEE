package game.singleton;

import game.stateless.PointService;

import java.util.concurrent.*;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.Singleton;
import javax.ejb.Startup;


@Singleton
@Startup
public class RankingService {

	@EJB PointService ps;
	
	@Resource ScheduledExecutorService exec;
	
	@PostConstruct
	public void setUp() {
		exec = Executors.newSingleThreadScheduledExecutor();
		exec.scheduleAtFixedRate(new Runnable() {
			  @Override
			  public void run() {
				  ps.updateAll();
			  }
			}, 0, 10, TimeUnit.MINUTES);	

	}
	
}