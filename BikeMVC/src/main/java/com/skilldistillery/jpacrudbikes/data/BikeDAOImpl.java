package com.skilldistillery.jpacrudbikes.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrudbikes.entities.Bike;


@Transactional
@Service
public class BikeDAOImpl implements BikeDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Bike> findAll() {
		String jpql = "SELECT b FROM Bike b";
		List<Bike> emps = em.createQuery(jpql, Bike.class).getResultList();
		return emps;
		
	}
	@Override
	public List<Bike> findBikesFromSearch(String search) {
		String jpql = "SELECT b FROM Bike b"
				+ " WHERE brand LIKE :brand "
				+ "OR model LIKE :model "
				+ "OR description LIKE :desc";
		
				List<Bike> emps = em.createQuery(jpql, Bike.class).setParameter("brand", "%" + search + "%").setParameter("model", "%" + search + "%").setParameter("desc", "%" + search + "%").getResultList();
		return emps;
		
	}
	
	@Override
	public Bike findById(int id) {
		return em.find(Bike.class, id);
		
	}
	
	@Override
	public Bike create(Bike bike) {
//		em.getTransaction().begin();
//		try {//try block not necessary but OK
			em.persist(bike);
			System.out.println(bike);
//			em.flush();
//			em.getTransaction().commit();
//		} catch (Exception e) {
//			e.printStackTrace();
//			em.getTransaction().rollback();
//		}
//		em.close();
		return bike;
	}

	@Override
	public Bike update(int id, Bike bike) {
		Bike bikeToUpdate = em.find(Bike.class, id);
//		em.getTransaction().begin();
		bikeToUpdate.setBrand(bike.getBrand());
		bikeToUpdate.setModel(bike.getModel());
		bikeToUpdate.setDescription(bike.getDescription());
		bikeToUpdate.setBarType(bike.getBarType());
		bikeToUpdate.setWheelSize(bike.getWheelSize());
		bikeToUpdate.setRimWidth(bike.getRimWidth());
		bikeToUpdate.setSuspType(bike.getSuspType());
		bikeToUpdate.setDrivenG(bike.getDrivenG());
		bikeToUpdate.setDrivingG(bike.getDrivingG());
		bikeToUpdate.setGender(bike.getGender());
		bikeToUpdate.setImgURL(bike.getImgURL());
		em.persist(bikeToUpdate);
//		em.flush();
//		em.getTransaction().commit();
		return bikeToUpdate;
	}

	@Override
	public boolean destroy(int id) {
		Bike bikeToDelete = em.find(Bike.class, id);
//		em.getTransaction().begin();
		em.remove(bikeToDelete);
		boolean bikeDeleted = !em.contains(bikeToDelete);
//		em.flush();
//		em.getTransaction().commit();
		
		return bikeDeleted;
	}

}
