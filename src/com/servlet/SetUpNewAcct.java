package com.servlet;

import java.io.IOException;
import java.text.NumberFormat;
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

import accounts.*;
import classes.Customer;

@WebServlet("/SetUpNewAcct")//coming from acctselection.jsp
public class SetUpNewAcct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SetUpNewAcct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Customer customer = (Customer)session.getAttribute("customer");
		String acctSelected = request.getParameter("acctSelected").toString();
		@SuppressWarnings("unchecked")
		ArrayList<Account> accountArray = (ArrayList<Account>)session.getAttribute("accountArray");
		if(accountArray == null) {
			accountArray = new ArrayList<Account>(); 
		}

			switch(acctSelected) {
				case "Advantage Savings":
						if(customer.getSavings() == null) {
						session = request.getSession(true);	
						double interest = .021;
						String date = date(LocalDateTime.now());
						Savings sAcct = new Savings(acctNumGen(), 10.0, date, interest);
						customer.setSavings(sAcct);
						accountArray.add(sAcct);
						}
						String sAcctName = customer.getSavings().getAcctName();
						session.setAttribute("sAcctName", sAcctName);
						String sOpenSince = customer.getSavings().getOpenSince(); 
						session.setAttribute("sOpenSince", sOpenSince);
						NumberFormat usd = NumberFormat.getCurrencyInstance();
						String sBalance = usd.format(customer.getSavings().getBalance());
						session.setAttribute("sBalance", sBalance);
						String sAcctNum = customer.getSavings().getAcctNum();
						session.setAttribute("sAcctNum", sAcctNum);
						break;
				case "Checking Plus":
						if(customer.getChecking() == null) {
						session = request.getSession(true);	
						double interest = .011;
						String date = date(LocalDateTime.now());
						Checking cAcct = new Checking(acctNumGen(), 20.0, date, interest);
						customer.setChecking(cAcct);
						accountArray.add(cAcct);
						}
						String cAcctNum = customer.getChecking().getAcctNum();
						session.setAttribute("cAcctNum", cAcctNum);
						String cOpenSince = customer.getChecking().getOpenSince();
						session.setAttribute("cOpenSince", cOpenSince);
						usd = NumberFormat.getCurrencyInstance();
						String cBalance = usd.format(customer.getChecking().getBalance());
						session.setAttribute("cBalance", cBalance);
						String cAcctName = customer.getChecking().getAcctName();
						session.setAttribute("cAcctName", cAcctName);
						break;
				}
		@SuppressWarnings("unchecked")
		ArrayList<Customer> bank = (ArrayList<Customer>)session.getAttribute("bank");
		if(bank == null) {
			bank = new ArrayList<Customer>();
		}

		bank.add(customer);

		session.setAttribute("bank", bank);
		session.setAttribute("accountArray", accountArray);
		session.setAttribute("customer", customer);

		RequestDispatcher rs = request.getRequestDispatcher("displayaccounts.jsp");
		rs.forward(request, response);
	}

		protected String date(LocalDateTime now) {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		String date = dateFormat.format(now);
		return date;
	}
	public static String acctNumGen() {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSS");
		String idGenerator = dateFormat.format(LocalDateTime.now());
		return idGenerator;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}