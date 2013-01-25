package game.stateless;

import java.util.List;

import game.embedded.Resources;
import game.entities.Mail;
import game.entities.Player;
import game.entities.Transaction;

import javax.ejb.*;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;


@Stateless
public class TransactionServiceImpl implements TransactionService {

	@EJB private EntityService es;
	@EJB private PlayerService ps;
	@EJB private ResourceService rs;
	@EJB private MailService ms;
	
	public List<Transaction> getTransactions() {
		EntityManager em = es.getEntityManager();
		TypedQuery<Transaction> query = em.createQuery("SELECT t FROM Transaction t", Transaction.class);
		List<Transaction> transactions = query.getResultList();
		em.close();
		return transactions;
	}
	
	public boolean proposeTransaction(Player proposer, Resources offer, Resources request) {
		Transaction t = new Transaction();
		t.setProposer(proposer);
		t.setOffer(offer);
		t.setRequest(request);
		if (rs.add(proposer, offer.clone().multiply(-1))) { // soustraction des ressources au proposer
			EntityManager em = es.openTransaction();
			em.persist(t);
			em.merge(proposer);
			es.commitTransaction(em);
			return true;
		} else {
			return false;
		}
	}
	
	public int acceptTransaction(Player approver, int id) {
		EntityManager em = es.getEntityManager();
		Transaction t = em.find(Transaction.class, id);
		if (t == null) {
			em.close();
			return -3; // id de transaction incorrecte
		}
		if (approver.getNickname().equals(t.getProposer().getNickname())) {
			approver.getResources().addResources(t.getOffer());
			em.getTransaction().begin();
			em.remove(t);
			em.merge(approver);
			em.getTransaction().commit();
			em.close();
			return 1; // offre supprimer
		}
		approver.getResources().addResources(t.getOffer());
		if (rs.add(approver, t.getRequest().clone().multiply(-1))) { // soustraction des ressources à l’approver
			t.getProposer().getResources().addResources(t.getRequest());
			em.getTransaction().begin();
			em.merge(approver);
			em.merge(t.getProposer());
			em.remove(t);
			em.getTransaction().commit();
			em.close();
			ms.sendMail(approver, t.getProposer().getNickname(), "[notification automatique]", "Je viens d’accepter une de tes offres ;-)");
			return 0; // échange effectué
		} else {
			approver.getResources().addResources(t.getOffer().clone().multiply(-1));
			em.close();
			return -2; // ressources insuffisantes
		}
	}

	@Override
	public int parseForm(HttpServletRequest request) {
		int value;
		Resources offer = new Resources();
		Resources claim = new Resources();
		if ((value = parseParameter(request, "offer_stone")) < 0) {
			return -1;
		} else {
			offer.setStone(value);
		}
		if ((value = parseParameter(request, "offer_gold")) < 0) {
			return -1;
		} else {
			offer.setGold(value);
		}
		if ((value = parseParameter(request, "offer_argent")) < 0) {
			return -1;
		} else {
			offer.setArgent(value);
		}
		if ((value = parseParameter(request, "offer_cuivre")) < 0) {
			return -1;
		} else {
			offer.setCuivre(value);
		}
		if ((value = parseParameter(request, "offer_metal")) < 0) {
			return -1;
		} else {
			offer.setMetal(value);
		}
		if ((value = parseParameter(request, "request_stone")) < 0) {
			return -1;
		} else {
			claim.setStone(value);
		}
		if ((value = parseParameter(request, "request_gold")) < 0) {
			return -1;
		} else {
			claim.setGold(value);
		}
		if ((value = parseParameter(request, "request_argent")) < 0) {
			return -1;
		} else {
			claim.setArgent(value);
		}
		if ((value = parseParameter(request, "request_cuivre")) < 0) {
			return -1;
		} else {
			claim.setCuivre(value);
		}
		if ((value = parseParameter(request, "request_metal")) < 0) {
			return -1;
		} else {
			claim.setMetal(value);
		}
		Player p = (Player) request.getAttribute("player");
		if (!proposeTransaction(p, offer, claim)) {
			return -2; // ressources insuffisantes
		}
		return 2; // offre publiée
	}
	
	public int parseParameter(HttpServletRequest request, String parameter) {
		String p = request.getParameter(parameter);
		if (p != null) {
			if (p.equals("")) {
				return 0;
			}
			try {
				int i = Integer.parseInt(p);
				return i;
			} catch(NumberFormatException nfe) {
				return -1;
			}
		} else {
			return -1;
		}
	}
}	