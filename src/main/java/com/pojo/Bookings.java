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
@Table(name="Bookings")
public class Bookings {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String pickup_date,dropoff_date,days,price;
	@OneToOne(cascade = CascadeType.ALL)  
	@JoinColumn(name="vehicle_id")  	
	private AddVehicle addvehicle;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPickup_date() {
		return pickup_date;
	}
	public void setPickup_date(String pickup_date) {
		this.pickup_date = pickup_date;
	}
	public String getDropoff_date() {
		return dropoff_date;
	}
	public void setDropoff_date(String dropoff_date) {
		this.dropoff_date = dropoff_date;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public AddVehicle getAddvehicle() {
		return addvehicle;
	}
	public void setAddvehicle(AddVehicle addvehicle) {
		this.addvehicle = addvehicle;
	}
	
	@OneToOne(cascade = CascadeType.ALL)  
	@JoinColumn(name="user_id")  	
	private UserReg userreg;
	public UserReg getUserreg() {
		return userreg;
	}
	public void setUserreg(UserReg userreg) {
		this.userreg = userreg;
	}
}
