package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dao.ModelClass;
import com.pojo.Login;
import com.pojo.ShopRegister;

import com.pojo.*;

@Controller
@ComponentScan("com.dao")
public class ControllerClass {
	@Autowired
	ModelClass dao;

	@RequestMapping("/")
	public String display(Model m) {
		return "index";
	}
@RequestMapping("/test")
public String Test() {
	return "test";
}
	@RequestMapping("/shopreg")
	public String ShopReg(Model m) {
		m.addAttribute("shop", new ShopRegister());
		m.addAttribute("login", new Login());
		return "shoplogin";
	}

	@RequestMapping("/register")
	public String regShop(@ModelAttribute("login") Login l, Model m, @ModelAttribute("shop") ShopRegister r, Model m1) {

		dao.addShop(l, r);
		m.addAttribute("shop", new ShopRegister());
		return "login";
	}

	@RequestMapping("/userregistration")
	public String regUser(@ModelAttribute("login") Login l, Model m, @ModelAttribute("user") UserReg u, Model m1) {

		dao.addUser(l, u);
		m.addAttribute("shop", new ShopRegister());
		return "login";
	}

	@RequestMapping("/signin")
	public String ShopLogin(Model m) {
		m.addAttribute("login", new Login());
		return "login";
	}

	@RequestMapping("/shopSignUp")
	public String ShopRegistration(Model m) {
		m.addAttribute("login", new Login());
		return "ShopRegistration";
	}

	@RequestMapping("/userSignUp")
	public String UserRegistration(Model m) {
		m.addAttribute("login", new Login());
		return "UserRegistration";
	}

	@RequestMapping("/addvehicle")
	public String AddVehicle(Model m) {

		return "AddVehicle";
	}

	@RequestMapping("/login")
	public String Login(@ModelAttribute("login") Login l, HttpSession session, Model m) {
		List<Login> list = dao.login(l);
		Login l1 = list.get(0);
		m.addAttribute("aaa", l1);
		if (l1.getUsertype().equals("1")) {
			session.setAttribute("id", l1.getShopregister().getId());
			List<AddVehicle> li = dao.ShopViewVehicles((Integer) session.getAttribute("id"));
			m.addAttribute("v", li);
			return "shophome";
		} else if (l1.getUsertype().equals("0")) {
			session.setAttribute("id", l1.getUserreg().getId());
			List<AddVehicle> li = dao.showAvailableVehicles();
			m.addAttribute("v", li);
			m.addAttribute("u",l1);
			return "UserHome";
		} else {
			return "index";
		}
	}

	@RequestMapping("/shopHome")
	public String shopHome(Model m,HttpSession session) {
		//session.setAttribute("id", l1.getShopregister().getId());
		List<AddVehicle> li = dao.ShopViewVehicles((Integer) session.getAttribute("id"));
		m.addAttribute("v", li);

		
		return "shophome";
	}
	@RequestMapping("/userHomes")
	public String userHome(Model m,HttpSession session) {
		//session.setAttribute("id", l1.getShopregister().getId());
		//session.setAttribute("id", l1.getUserreg().getId());
		int id = (Integer)session.getAttribute("id");
		List<Login> li = dao.getUserProfile(id);
		List<AddVehicle> l1 = dao.showAvailableVehicles();
		Login l = li.get(0);
		m.addAttribute("v", l1);
		m.addAttribute("u",l);
		
		return "UserHome";
	}
	@RequestMapping("/viewvehicle")
	public String viewVehicle(@ModelAttribute("addvehicle") AddVehicle av, Model m, HttpSession session) {
		List<AddVehicle> li = dao.ShopViewVehicles((Integer) session.getAttribute("id"));
		m.addAttribute("v", li);
		return "ViewVehicles";
	}

	@RequestMapping(value = "/addVehicle", method = RequestMethod.POST)
	public String saveProducts(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("image") MultipartFile file, HttpSession session) {
		ServletContext context = session.getServletContext();
		// String path = context.getRealPath(UPLOAD_DIRECTORY);

		String path = "E:/java/MotoRent123/src/main/webapp/WEB-INF/images";

		String filename = file.getOriginalFilename();

		byte[] bytes;
		try {
			bytes = file.getBytes();
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
			stream.write(bytes);
			stream.flush();
			stream.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		AddVehicle av = new AddVehicle();
		av.setCompanyName(request.getParameter("companyName"));
		av.setVehicleName(request.getParameter("vehicleName"));
		av.setModel(request.getParameter("model"));
		av.setType(request.getParameter("type"));
		av.setManufactureYear(request.getParameter("manufactureYear"));
		av.setDistance(request.getParameter("distance"));
		av.setVehicleNo(request.getParameter("vehicleNo"));
		av.setCost(request.getParameter("cost"));
		av.setImage(filename);
		av.setStatus(request.getParameter("status"));
		int id = (Integer) session.getAttribute("id");
		ShopRegister sr = new ShopRegister();
		sr.setId(id);
		av.setShopregister(sr);
		int i = dao.addVehicle(av);
		if (i > 0) {
			return "redirect:/shopHome";
		} else {
			// System.out.println("erre");
			return "redirect:/shopHome";
		}
	}

	@RequestMapping(value = "/EditVehicle/{id}")
	public String edit(@PathVariable int id, Model m, HttpSession session) {
		List<AddVehicle> list = dao.getVehicleById(id);
		AddVehicle aa = list.get(0);
		session.setAttribute("vid", aa.getId());
		System.out.println(session.getAttribute("vid"));
		m.addAttribute("av", aa);
		return "vehicleEdit";
	}

	@RequestMapping(value = "/saveEdit", method = RequestMethod.POST)
	public String SaveEdit(@ModelAttribute("addvehicle") AddVehicle av, Model m, HttpSession session) {
		int id = (Integer) session.getAttribute("vid");
		System.out.println(id);
		dao.updateVehicle(av, id);
		return "redirect:/shopHome";
	}

	@RequestMapping(value = "/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

	@RequestMapping(value = "/view/{id}")
	public String View(@PathVariable int id, Model m, HttpSession session) {
		List<AddVehicle> li = dao.view(id);
		m.addAttribute("v", li);
		return "userViewVehicle";
	}

	@RequestMapping(value = "/book/{id}")
	public String Book(@PathVariable int id, Model m, HttpSession session) {
		List<AddVehicle> li = dao.view(id);
		int uid = (Integer) session.getAttribute("id");
		List<UserReg> u = dao.getUserById(uid);
		m.addAttribute("v", li);
		m.addAttribute("user", u);
		return "payment";
	}

	/*
	 * @RequestMapping(value="/order") public String Order(HttpServletRequest
	 * request) { String days=request.getParameter("numdays");
	 * System.out.println(days); return "payment"; }
	 */
	@RequestMapping("/order")
	public String Booking(@ModelAttribute("booking") Bookings b, Model m, HttpServletRequest request,
			HttpSession session) {
		String days = request.getParameter("numdays");
		String price = request.getParameter("price");
		int vid = Integer.parseInt(request.getParameter("vid"));
		System.out.println(price);
		int id = (Integer) session.getAttribute("id");
		UserReg u = new UserReg();
		List<UserReg> ur = dao.getUserById(id);
		u = ur.get(0);
		AddVehicle av = new AddVehicle();
		List<AddVehicle> ad = dao.view(vid);
		av = ad.get(0);

		b.setAddvehicle(av);
		u.setId(id);
		b.setUserreg(u);
		b.setDays(days);
		b.setPrice(price);

		dao.booking(b);
		List<AddVehicle> li = dao.showVehicles();
		m.addAttribute("v", li);
		av.setStatus("not avilable");
		dao.updateVehicle(av, id);
		return "UserHome";
	}

	@RequestMapping("vehicleSearch")
	public String SearchVehicle(Model m, HttpServletRequest request) {
		String type = request.getParameter("type");
		String search = request.getParameter("search");
		System.out.println(search);
		List<AddVehicle> list = dao.searchVehicle(type, search);
		m.addAttribute("sv", list);
		return "viewSearchVehicles";
	}

	@RequestMapping("/viewBookings")
	public String ViewBookings(Model m, HttpSession session) {
		int id = (Integer) session.getAttribute("id");
		List<Bookings> li = dao.getBookingByshop(id);
	//	System.out.println(li.get(0).getAddvehicle().getVehicleName());
		m.addAttribute("b", li);
		
		return "vehicleBookings";
	}

	@RequestMapping("/shopprofile")
	public String Profile(Model m, HttpSession session) {
		int id = (Integer) session.getAttribute("id");

		List<Login> list = dao.getShopProfile(id);
		// System.out.println(list);
		System.out.println(list.get(0).getShopregister().getShopname()+"hii");
		m.addAttribute("s", list.get(0));

		return "ShopProfileEdit";
	}

	@RequestMapping("/userprofile")
	public String USerProfile(Model m, HttpSession session) {
		int id = (Integer) session.getAttribute("id");
		List<Login> list = dao.getUserProfile(id);
		// System.out.println(list.get(0).getShopregister().getShopname()+" hello");
		m.addAttribute("p", list.get(0));
		return "UserProfileEdit";
	}
	
	@RequestMapping("/saveEditUser")
	public String editUser(@ModelAttribute("login") Login l, @ModelAttribute("user") UserReg ur,Model m, HttpSession session) {
		int id = (Integer)session.getAttribute("id");
		l.setUserreg(ur);
	dao.editUser(l,id);
	List<AddVehicle> li = dao.showVehicles();
	m.addAttribute("v", li);
	return "UserHome";
	}
	@RequestMapping("/editShop")
	public String editShop(@ModelAttribute("login") Login l, @ModelAttribute("shop") ShopRegister s,Model m, HttpSession session) {
		int id = (Integer)session.getAttribute("id");
		l.setShopregister(s);
	dao.EditShop(l,id);
	List<AddVehicle> li = dao.showVehicles();
	m.addAttribute("v", li);
	return "shophome";
	}
	
	@RequestMapping("/userOrders")
	public String userOrder(Model m,HttpSession session) {
		int id = (Integer)session.getAttribute("id");
		List<Bookings> li=dao.UserBooking(id);
		
		List<Login> list = dao.getUserProfile(id);
		// System.out.println(list.get(0).getFirstname()+" hello");
		m.addAttribute("p", list.get(0));
		m.addAttribute("order", li);
		return "UserBookings";
	}
	@RequestMapping(value = "/cancelBooking/{id}")
	public String cancelBooking(@PathVariable int id, Model m, HttpSession session) {
		List<Bookings> li=dao.UserBooking(id);
		AddVehicle av = new AddVehicle();
		av.setStatus("available");
		//int vid=li.get(0).getAddvehicle().getId();
		//System.out.println("cancel booking"+vid);
		//dao.updateVehicle(av,vid);
		
		dao.CancelOrder(id);
		
		m.addAttribute("order", li);
		
		return "redirect:/userOrders";
	}
	@RequestMapping(value="/userHome")
	public String UserHome(Model m,HttpSession session) {
		int id = (Integer) session.getAttribute("id");
		List<Login> list = dao.getUserProfile(id);
		// System.out.println(list.get(0).getFirstname()+" hello");
		m.addAttribute("p", list.get(0));
		List<AddVehicle> li = dao.showVehicles();
		m.addAttribute("v", li);
		return "UserHome";
	}
}
