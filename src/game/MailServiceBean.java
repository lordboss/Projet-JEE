package game;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.TypedQuery;

@Stateless
public class MailServiceBean implements MailService {

	@EJB PlayerService ps;
	
	@PersistenceUnit(unitName="jpa")
	private EntityManagerFactory factory;
	private EntityManager em;
	
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
	
	@Override
	public Mail createMail(String sender, String receiver, String body, String subject) {
		// TODO Auto-generated method stub
		Mail mail = new Mail(sender, receiver, subject, body);
		Player s = ps.findPlayer(sender);
		Player r = ps.findPlayer(receiver);
		r.getMails().add(0, mail);
		s.getMails().add(0, mail);
		em.getTransaction().begin();
		em.persist(mail);
		em.getTransaction().commit();
		return mail;
	}

	@Override
	public void removeMail(int id) {
		// TODO Auto-generated method stub
		em.getTransaction().begin();
		Mail m = findMail(id);
		if (m != null) {
			em.remove(m);
		}
		em.getTransaction().commit();
	}

	@Override
	public Mail findMail(int id) {
		// TODO Auto-generated method stub
		return em.find(Mail.class, id);
	}

	@Override
	public List<Mail> findReceivedMailsOf(String pseudo) {
		// TODO Auto-generated method stub
		TypedQuery<Mail> query = em.createQuery("SELECT m FROM Mail m WHERE m.receiver = :pseudo", Mail.class).setParameter("pseudo", pseudo);
		return query.getResultList();
	}

	@Override
	public List<Mail> findSentMailsOf(String pseudo) {
		// TODO Auto-generated method stub
		TypedQuery<Mail> query = em.createQuery("SELECT m FROM Mail m WHERE m.sender = :pseudo", Mail.class).setParameter("pseudo", pseudo);
		return query.getResultList();
	}

}
