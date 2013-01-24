package game.stateless;

import javax.persistence.EntityManager;

public interface EntityService {
	public EntityManager getEntityManager();
	public EntityManager openTransaction();
	public void commitTransaction(EntityManager em);
	public void persist(Object o);
	public void merge(Object o);
}
