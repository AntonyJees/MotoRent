package com.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Vehicles")
public class AddVehicle {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String companyName,vehicleName,model,type,manufactureYear,distance,vehicleNo,cost,image,status;
	@OneToOne(cascade = CascadeType.ALL)  
	@JoinColumn(name="regid")  	
	private ShopRegister shopregister;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getVehicleName() {
		return vehicleName;
	}
	public void setVehicleName(String vehicleName) {
		this.vehicleName = vehicleName;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getManufactureYear() {
		return manufactureYear;
	}
	public void setManufactureYear(String manufactureYear) {
		this.manufactureYear = manufactureYear;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getVehicleNo() {
		return vehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public ShopRegister getShopregister() {
		return shopregister;
	}
	public void setShopregister(ShopRegister shopregister) {
		this.shopregister = shopregister;
	}
}
