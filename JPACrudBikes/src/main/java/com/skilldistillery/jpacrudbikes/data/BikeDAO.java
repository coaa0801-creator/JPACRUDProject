package com.skilldistillery.jpacrudbikes.data;

import com.skilldistillery.jpacrudbikes.entities.Bike;

public interface BikeDAO {

	Bike create(Bike bike);

	Bike update(int id, Bike bike);

	boolean destroy(int id);

}
