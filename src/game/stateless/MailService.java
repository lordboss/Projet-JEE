package game.stateless;

import java.util.List;

import game.entities.Mail;
import game.entities.Player;

public interface MailService {
	
	public boolean sendMail(Player sender, String nickname, String topic, String body);
	public List<Mail> getMails(Player player);
	public void updateMailCounter();
	public Mail getMail(int id, Player player);
	public boolean deleteMail(int id, Player player);
	public void resetUnread(Player p);
	
}
