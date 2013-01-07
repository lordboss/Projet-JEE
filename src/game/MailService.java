package game;

import java.util.List;

public interface MailService {

	public Mail createMail(String sender, String receiver, String body, String subject);
	public void removeMail(int id);
	public Mail findMail(int id);
	public List<Mail> findReceivedMailsOf(String pseudo);
	public List<Mail> findSentMailsOf(String pseudo);
}
