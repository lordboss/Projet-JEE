package game.stateless;

import javax.annotation.PreDestroy;
import javax.ejb.*;
import javax.persistence.*;

@Stateless
public class EntityServiceImpl implements EntityService {

	@PersistenceUnit(unitName="jpa")
	private EntityManagerFactory factory;
	
	@PreDestroy
	public void tearDown() {
		if (factory != null) {
			factory.close();
		}
	}
	
	public EntityManager getEntityManager() {
		return factory.createEntityManager();
	}

	public EntityManager openTransaction() {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();
		return em;
	}
	
	public void commitTransaction(EntityManager em) {
		em.getTransaction().commit();
		em.close();
	}
	
	public void persist(Object o) {
		EntityManager em = openTransaction();
		em.persist(o);
		commitTransaction(em);
	}
	
	public void merge(Object o) {
		EntityManager em = openTransaction();
		em.merge(o);
		commitTransaction(em);
	}
}