package game.stateless;

import game.entities.Player;

import java.util.Date;
import java.util.List;

import javax.ejb.*;


@Local
public interface PlayerService {

	public Player create(String lastname, String firstname, String email, Date birthdate, String city, String country, String nickname, String password);
	public Player find(String nickname);
	public List<Player> findAll();
	public void remove(String nickname);
	public boolean checkPwd(Player player, String password);
	public void updatePlayer(Player player);
	public void sortByPoints(List<Player> players);
	public void sortByRank(List<Player> players);
}