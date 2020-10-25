package com.skilldistillery.jpacrudbikes.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpacrudbikes.entities.Bike;



public class BikeDAOImpl implements BikeDAO {
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("BikePU");


	@Override
	public Bike create(Bike bike) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		try {//try block not necessary but OK
			em.persist(bike);
			em.flush();
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		}
		em.close();
		return bike;
	}

	@Override
	public Bike update(int id, Bike bike) {
		EntityManager em = emf.createEntityManager();
		Bike bikeToUpdate = em.find(Bike.class, id);
		em.getTransaction().begin();
		bikeToUpdate.setBrand(bike.getBrand());
		bikeToUpdate.setModel(bike.getModel());
		em.persist(bikeToUpdate);
		em.flush();
		em.getTransaction().commit();
		return bikeToUpdate;
	}

	@Override
	public boolean destroy(int id) {
		EntityManager em = emf.createEntityManager();
		Bike bikeToDelete = em.find(Bike.class, id);
		em.getTransaction().begin();
		em.remove(bikeToDelete);
		boolean bikeDeleted = !em.contains(bikeToDelete);
		em.flush();
		em.getTransaction().commit();
		
		return bikeDeleted;
	}

}
