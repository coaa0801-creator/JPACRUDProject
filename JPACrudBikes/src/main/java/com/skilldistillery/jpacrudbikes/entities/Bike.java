package com.skilldistillery.jpacrudbikes.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bike {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;
private String brand;
private String model;
private String description;
@Column(name= "handlebar_type")
private String barType;
@Column(name= "rim_circumference")
private Integer wheelSize;
@Column(name= "rim_width")
private Integer rimWidth;
@Column(name= "suspension_type")
private String suspType;
@Column(name= "driven_gear")
private Integer drivenG;
@Column(name= "driving_gear")
private Integer drivingG;
@Enumerated(EnumType.STRING)
private Gender gender;
@Column(name= "image_url")
private String imgURL;

public Bike() {
	super();
}

@Override
public String toString() {
	return "Bike [id=" + id + ", brand=" + brand + ", model=" + model + ", description=" + description + ", barType="
			+ barType + ", wheelSize=" + wheelSize + ", rimWidth=" + rimWidth + ", suspType=" + suspType + ", drivenG="
			+ drivenG + ", drivingG=" + drivingG + ", gender=" + gender + ", imgURL=" + imgURL + "]";
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getBrand() {
	return brand;
}

public void setBrand(String brand) {
	this.brand = brand;
}

public String getModel() {
	return model;
}

public void setModel(String model) {
	this.model = model;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getBarType() {
	return barType;
}

public void setBarType(String barType) {
	this.barType = barType;
}

public Integer getWheelSize() {
	return wheelSize;
}

public void setWheelSize(Integer wheelSize) {
	this.wheelSize = wheelSize;
}

public Integer getRimWidth() {
	return rimWidth;
}

public void setRimWidth(Integer rimWidth) {
	this.rimWidth = rimWidth;
}

public String getSuspType() {
	return suspType;
}

public void setSuspType(String suspType) {
	this.suspType = suspType;
}

public Integer getDrivenG() {
	return drivenG;
}

public void setDrivenG(Integer drivenG) {
	this.drivenG = drivenG;
}

public Integer getDrivingG() {
	return drivingG;
}

public void setDrivingG(Integer drivingG) {
	this.drivingG = drivingG;
}

public Gender getGender() {
	return gender;
}

public void setGender(Gender gender) {
	this.gender = gender;
}

public String getImgURL() {
	return imgURL;
}

public void setImgURL(String imgURL) {
	this.imgURL = imgURL;
}

}