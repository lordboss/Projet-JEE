package game.stateless;

import java.util.List;

import game.entities.Mail;
import game.entities.Player;

import javax.ejb.*;
import javax.persistence.*;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;


@Stateless
public class MailServiceImpl implements MailService {

	@EJB private EntityService es;
	@EJB private PlayerService ps;
	
	public List<Mail> getMails(Player player) {
		List<Mail> mails = null;
		EntityManager em = es.getEntityManager();
		TypedQuery<Mail> query = em.createQuery("SELECT m FROM Mail m WHERE m.recipient = :player", Mail.class)
				.setParameter("player", player);
		try {
			mails = query.getResultList();
		} catch (NoResultException e) {
			//pass
		}
		em.close();
		return mails;
	}
	
	public boolean sendMail(Player sender, String nickname, String topic, String body) {
		if (sender == null) return false;
		if (nickname == null) return false;
		EntityManager em = es.getEntityManager();
		Player recipient = ps.find(nickname);
		if (recipient == null) {
			em.close();
			return false;
		}
		if (topic == null || topic.equals("")) {
			topic = "&lsaquo;pas de sujet&rsaquo;";
		}
		if (body == null || body.equals("")) {
			body = "&lsaquo;pas de message&rsaquo;";
		}
		Mail mail = new Mail();
		mail.setSender(sender);
		mail.setRecipient(recipient);
		mail.setTopic(Jsoup.clean(topic, Whitelist.simpleText()));
		mail.setBody(Jsoup.clean(body, Whitelist.simpleText()));
		recipient.getStats().newMail();
		em.getTransaction().begin();
		em.persist(mail);
		em.merge(recipient);
		em.getTransaction().commit();
		em.close();
		return true;
	}
	
	public Mail getMail(int id, Player p) {
		EntityManager em = es.getEntityManager();
		Mail m = em.find(Mail.class, id);
		em.close();
		if (m != null) {
			if (m.getRecipient().getNickname().equals(p.getNickname())) {
				return m;
			} else {
				return null;
			}
		} else {
			return null;
		}
	}

	public boolean deleteMail(int id, Player p) {
		boolean success = false;
		EntityManager em = es.getEntityManager();
		Mail m = em.find(Mail.class, id);
		if (m != null && m.getRecipient().getNickname().equals(p.getNickname())) {
			Player recipient = m.getRecipient();
			recipient.getStats().delMail();
			em.getTransaction().begin();
			em.remove(m);
			em.merge(recipient);
			em.getTransaction().commit();
			success = true;
		}
		em.close();
		return success;
	}
	
	public void resetUnread(Player p) {
		p.getStats().setMailUnread(0);
		ps.updatePlayer(p);
	}

	@Override
	public void updateMailCounter() {
		List<Player> players = ps.findAll();
		EntityManager em = es.getEntityManager();
		em.getTransaction().begin();
		for (Player p : players) {
			int count = em.createQuery("SELECT m FROM Mail m WHERE m.recipient = :player", Mail.class)
					.setParameter("player", p).getResultList().size();
			System.out.println(p.getNickname() + " : " + count);
			p.getStats().setMailCount(count);
			em.merge(p);
		}
		em.getTransaction().commit();
		em.close();
	}
}	