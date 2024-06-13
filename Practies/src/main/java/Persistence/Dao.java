package Persistence;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Entity.Registration;

public class Dao {
 private EntityManagerFactory  emf=Persistence.createEntityManagerFactory("anjali");
 private EntityManager em=emf.createEntityManager();
 private EntityTransaction et=em.getTransaction();
	public void CreateEle(Registration r) {
		
		et.begin();
		em.persist(r);
		et.commit();
	}
	public List<Registration> getAllEle() {
		Query q=em.createQuery("select e from Registration e");
		List<Registration> ls =q.getResultList();
		if(ls.isEmpty()) {
			return new ArrayList<>();
		}
		return ls;
		
	}
	public Registration getEleID(int id) {
		return em.find(Registration.class, id);
		
	}
	public void update(Registration r) {
		et.begin();
		em.merge(r);
		et.commit();
	}
	public void  delete(Registration r) {
		et.begin();
		em.remove(r);
		et.commit();
	}

}
