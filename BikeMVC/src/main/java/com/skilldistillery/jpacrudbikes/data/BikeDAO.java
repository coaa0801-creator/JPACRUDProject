package com.skilldistillery.jpacrudbikes.data;

import java.util.List;

import com.skilldistillery.jpacrudbikes.entities.Bike;

public interface BikeDAO {

	Bike create(Bike bike);

	Bike update(int id, Bike bike);

	boolean destroy(int id);
	List<Bike> findAll();
	Bike findById(int id);

	List<Bike> findBikesFromSearch(String search);


}
