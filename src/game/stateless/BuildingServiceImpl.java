package game.stateless;

import java.util.List;

import game.buildings.*;
import game.entities.Player;

import javax.ejb.*;
import javax.persistence.*;


@Stateless
public class BuildingServiceImpl implements BuildingService {

	@EJB private EntityService es;
	@EJB private ResourceService rs;

	@Override
	public void newBuildings(EntityManager em, Player p) {
		StoneMine StoneMine = new StoneMine();
		StoneMine.setOwner(p);
		em.persist(StoneMine);
		GoldMine goldMine = new GoldMine();
		goldMine.setOwner(p);
		em.persist(goldMine);
		SilverMine silverMine = new SilverMine();
		silverMine.setOwner(p);
		em.persist(silverMine);
		CuivreMine CuivreMine = new CuivreMine();
		CuivreMine.setOwner(p);
		em.persist(CuivreMine);
		MetalMine MetalMine = new MetalMine();
		MetalMine.setOwner(p);
		em.persist(MetalMine);
	}

	@Override
	public List<Building> getBuildings(Player player) {
		EntityManager em = es.getEntityManager();
		List<Building> buildings = null;
		TypedQuery<Building> query = em.createQuery("SELECT b FROM Building b WHERE b.owner = :player ORDER BY id", Building.class)
				.setParameter("player", player);
		try {
			buildings = query.getResultList();
		} catch (NoResultException e) {
			//pass
		}
		em.close();
		return buildings;
	}

	@Override
	@TransactionAttribute(TransactionAttributeType.REQUIRES_NEW)
	public String build(Player p, int id) {
		EntityManager em = es.openTransaction();
		Building b = em.find(Building.class, id);
		String result = "";
		if (b != null // le batiment existe
					&& b.getOwner().getNickname().equals(p.getNickname())) { // on est bien son proprio
			if (rs.add(p, b.getResourcesNeeded().clone().multiply(-1))) { // on a les ressources nécessaire
				b.levelUp(); // on incrémente son niveau
				em.merge(b);
				em.getTransaction().commit();
				result = "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Bâtiment construit avec succès.</div>";
			} else {
				result = "<div class=\"alert alert-error\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Ressources insuffisantes pour lancer la construction.</div>";
			}
		}
		em.close();
		return result;
	}
}	