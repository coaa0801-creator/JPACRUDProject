package com.skilldistillery.japcrudbikes.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpacrudbikes.entities.Bike;

class BikeTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Bike bike;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BikePU");
		

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		bike = em.find(Bike.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		bike = null;
	}
	
	
	@Test
	void test_found_first_entry_in_database() {
		assertNotNull(bike);
		assertEquals("Trek", bike.getBrand());

	}

}
