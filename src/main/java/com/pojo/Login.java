package com.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.OneToOne;
import javax.persistence.OrderColumn;
import javax.persistence.Table;

	@Entity
	@Table(name="login")
	public class Login {
		
			@Id
			@GeneratedValue(strategy = GenerationType.AUTO)
			private int id;
			
			@Column(name = "email")
			private String email;
			@Column(name = "password")
			private String password;
			public String getUsertype() {
				return usertype;
			}
			public void setUsertype(String usertype) {
				this.usertype = usertype;
			}
			@Column(name = "usertype")
			private String usertype;
			
			@OneToOne(cascade = CascadeType.ALL)  
			@JoinColumn(name="regid")  
			
			private ShopRegister shopregister;
			
			@OneToOne(cascade = CascadeType.ALL)  
			@JoinColumn(name="shopid") 
			private ShopRegister shopreg;
			
			@OneToOne(cascade = CascadeType.ALL)  
			@JoinColumn(name="userid") 
			private UserReg userreg;
			
			public UserReg getUserreg() {
				return userreg;
			}
			public void setUserreg(UserReg userreg) {
				this.userreg = userreg;
			}
			
			public int getId() {
				return id;
			}
			public void setId(int id) {
				this.id = id;
			}
			
			public String getEmail() {
				return email;
			}
			public void setEmail(String email) {
				this.email = email;
			}
			public String getPassword() {
				return password;
			}
			public void setPassword(String password) {
				this.password = password;
			}
			public ShopRegister getShopregister() {
				return shopregister;
			}
			public void setShopregister(ShopRegister shopregister) {
				this.shopregister = shopregister;
			}
			
			

}

