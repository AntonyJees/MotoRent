package com.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pojo.AddVehicle;
import com.pojo.Bookings;
import com.pojo.Login;
import com.pojo.ShopRegister;
import com.pojo.UserReg;





@Transactional
@Repository
public class ModelClass {

	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void addShop(Login l,ShopRegister r) {
		l.setShopregister(r);
		int i=(Integer)sessionFactory.getCurrentSession().save(l);
		System.out.println(i);
	}
	public void addUser(Login l,UserReg u) {
		l.setUserreg(u);
		int i=(Integer)sessionFactory.getCurrentSession().save(l);
		System.out.println(i);
	}
	public List<Login> login(Login l) {
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from Login where email='"+l.getEmail()+"' "
				+ "and password='"+l.getPassword()+"'");
		List<Login> list=query.list();
		return list;
	}
	public int addVehicle(AddVehicle av) {
		
		int i=(Integer)sessionFactory.getCurrentSession().save(av);
		System.out.println(i);
		return i;
	}
	public List<AddVehicle> ShopViewVehicles(int id) {
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from AddVehicle where shopregister.id='"+id+"'");
		List<AddVehicle> li=query.list();
		return li;
	}
	public List<AddVehicle> getVehicleById(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from AddVehicle where id='"+id+"'");
		
		
		List<AddVehicle> list=query.list();
		return list;
	}
	public void updateVehicle(AddVehicle av,int id) {
		System.out.println(id);
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("update AddVehicle set companyName='"+av.getCompanyName()+"',vehicleName='"+av.getVehicleName()+"',model='"+av.getModel()+"',status='"+av.getStatus()+"',type='"+av.getType()+"',manufactureYear='"+av.getManufactureYear()+"',distance='"+av.getDistance()+"',vehicleNo='"+av.getVehicleNo()+"',cost='"+av.getCost()+"' "
						+ "where id='"+id+"'");
		query.executeUpdate();
	}
	public List<AddVehicle> showVehicles(){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from AddVehicle");
		List<AddVehicle> list=query.list();
		return list;
	}
	
	public List<AddVehicle> showAvailableVehicles(){
		String status = "Available";
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from AddVehicle");
		List<AddVehicle> list=query.list();
		return list;
	}
	
	public List<AddVehicle> view(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from AddVehicle where id='"+id+"'");
		List<AddVehicle> list=query.list();
		return list;
	}
	public List<UserReg> getUserById(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from UserReg where id='"+id+"'");
		List<UserReg> list=query.list();
		return list;
	}
	public void booking(Bookings b) {
		sessionFactory.getCurrentSession().save(b);
		String s="Out Of Stock";
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("update AddVehicle set status='"+s+"' where id='"+b.getAddvehicle().getId()+"'");
		query.executeUpdate();
	}
	public List<AddVehicle> searchVehicle(String type,String search){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from AddVehicle where type='"+type+"' or vehiclename='"+search+"'");
		List<AddVehicle> list=query.list();
		return list;
	}
	public List<Bookings> getBookingByshop(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from Bookings where addvehicle.shopregister.id='"+id+"'");
		List<Bookings> list=query.list();
		return list;
	}
	public List<Login> getShopProfile(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from Login where shopregister.id='"+id+"'");
		List<Login> list=query.list();
		return list;
	}
	public List<Login> getUserProfile(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from Login where userreg.id='"+id+"'");
		List<Login> list=query.list();
		return list;
	}
	public void editUser(Login l,int id){
	org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("update UserReg set firstname='"+l.getUserreg().getFirstname()+"',lastname='"+l.getUserreg().getLastname()+"',email='"+l.getUserreg().getEmail()+"',phone='"+l.getUserreg().getPhone()+"',license='"+l.getUserreg().getLicense()+"' where id='"+id+"'");
	query.executeUpdate();
	org.hibernate.Query query1=sessionFactory.getCurrentSession().createQuery("update Login set password='"+l.getPassword()+"',email='"+l.getEmail()+"' where userreg.id='"+id+"'");
	query1.executeUpdate();
	}
	public void EditShop(Login l,int id) {
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("update ShopRegister set shopname='"+l.getShopregister().getShopname()+"',email='"+l.getShopregister().getEmail()+"',phone='"+l.getShopregister().getPhone()+"',district='"+l.getShopregister().getDistrict()+"',city='"+l.getShopregister().getCity()+"',street='"+l.getShopregister().getStreet()+"',pincode='"+l.getShopregister().getPincode()+"'where id='"+id+"'");
		query.executeUpdate();
		org.hibernate.Query query1=sessionFactory.getCurrentSession().createQuery("update Login set password='"+l.getPassword()+"',email='"+l.getEmail()+"' where shopregister.id='"+id+"'");
		query1.executeUpdate();
	}
	
	public List<Bookings> UserBooking(int id){
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from Bookings where userreg.id='"+id+"'");
		List<Bookings> li=query.list();
		return li;
	}
	public void CancelOrder(int id) {
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("delete from Bookings where id='"+id+"'");
		query.executeUpdate();
	}
	public List<Login> findUser(int id){
		int type=0;
		org.hibernate.Query query=sessionFactory.getCurrentSession().createQuery("from Login where id='"+id+"' and usertype='"+type+"'");
		List<Login> li = query.list();
		return li;
	}
}
