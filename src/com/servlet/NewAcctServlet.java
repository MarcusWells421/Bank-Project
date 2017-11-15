package com.servlet;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import classes.Address;
import classes.Customer;


@WebServlet("/NewAcctServlet")
public class NewAcctServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NewAcctServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Address address = new Address(request.getParameter("street"), request.getParameter("city"), request.getParameter("state"), request.getParameter("zipCode"));
		String telephone = truncPhone(request.getParameter("telephone").trim());
		String custId = genCustId() + telephone;
		String date = date(LocalDateTime.now());
		String firstName = request.getParameter("firstName");
		String middleName = request.getParameter("middleName");
		String lastName = request.getParameter("lastName");
		String password = request.getParameter("password");
		Customer customer = new Customer(firstName, middleName, lastName, address, custId, date, telephone, password);
		HttpSession session= request.getSession(true);
		session.setAttribute("customer", customer);
		session.setAttribute("firstName", firstName);
		RequestDispatcher rs = request.getRequestDispatcher("acctselection.jsp");
		rs.forward(request, response);
	}

	private String truncPhone(String t) {
		String telephone = "";
			for(int i = 0; i < t.length(); i++) {
				if(t.charAt(i) == '(' || t.charAt(i) == ')' || t.charAt(i) == '-' || t.charAt(i) == ' ') {
					continue;
				} else {
					telephone += t.charAt(i);
				}
			}
		return telephone;
	}
	private String genCustId() {
		DateTimeFormatter dateFormat2 = DateTimeFormatter.ofPattern("yyMMddSS");
		String idGenerator2 = dateFormat2.format(LocalDateTime.now());
		return idGenerator2;
	}
	protected String date(LocalDateTime now) {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		String date = dateFormat.format(now);
		return date;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
