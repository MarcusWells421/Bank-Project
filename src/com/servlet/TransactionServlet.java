package com.servlet;

import java.io.IOException;
import java.text.NumberFormat;
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

/**
 * Servlet implementation class TransactionServlet
 */
@WebServlet("/TransactionServlet")
public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		NumberFormat usd = NumberFormat.getCurrencyInstance();
		Customer customer = (Customer)session.getAttribute("customer");
		/*@SuppressWarnings("unchecked")
		ArrayList<Account> accountArray = (ArrayList<Account>)session.getAttribute("accountArray");
		@SuppressWarnings("unchecked")
		ArrayList<Customer> bank = (ArrayList<Customer>)session.getAttribute("bank");
		if(customer.getSavings() != null) {String sBalance = usd.format(customer.getSavings().getBalance());}
		if(customer.getChecking() != null) {String cBalance = usd.format(customer.getChecking().getBalance());}*/
		double amount = Double.parseDouble(request.getParameter("amount"));
		String trans = request.getParameter("trans");//sd, sw, cd, cw
		String transType = request.getParameter("transType").toString();
		Transaction transaction = new Transaction(transType, amount, customer.getCustId());
			switch(trans) {
				case "sd":
					if(request.getParameter("transType").equals("CHECK") || request.getParameter("transType").equals("ELECTRONIC FUNDS TRANSFER")) {
						if(request.getParameter("transType").equals("CHECK")) {
							//session.setAttribute("show", "csd");
							//transType = null;
							//request.setAttribute("amount", amount);
							RequestDispatcher rs = request.getRequestDispatcher("transaction.jsp?show=csd");
							rs.forward(request, response);
						} else {
							//session.setAttribute("show", "esd");
							//transType = null;
							RequestDispatcher rs = request.getRequestDispatcher("transaction.jsp?show=esd");
							rs.forward(request, response);
						}
					}
					transaction.setAcctNum(customer.getSavings().getAcctNum());
					String payor = (request.getParameter("payor") == null) ? null : request.getParameter("payor");
					String payee = (request.getParameter("payee") == null) ? null : request.getParameter("payee");
					transaction.setPayor(payor);
					transaction.setPayee(payee);
					double balance = customer.getSavings().getBalance() + Math.abs(amount);
					customer.getSavings().setBalance(balance);
					String sBalance = usd.format(balance);
					session.setAttribute("sBalance", sBalance);
					if(customer.getSavings().getTransactionArray() == null) {
						ArrayList<Transaction> transactionArray = new ArrayList<Transaction>();
						customer.getSavings().setTransactionArray(transactionArray);
					}
					customer.getSavings().getTransactionArray().add(transaction);
					session = request.getSession(true);
					session.setAttribute("customer", customer);
					RequestDispatcher rs = request.getRequestDispatcher("accountscreen.jsp?show=Advantage Savings");
					rs.forward(request, response);
					break;
				
				case "cd":
					if(transType == "CHECK" || transType == "ELECTRONIC FUNDS TRANSFER") {
						if(transType == "CHECK") {
							//session.setAttribute("show", "ccd");
							transType = null;
							rs = request.getRequestDispatcher("transaction.jsp?show=ccd");
							rs.forward(request, response);
						} else {
							//session.setAttribute("show", "ecd");
							transType = null;
							rs = request.getRequestDispatcher("transaction.jsp?show=ecd");
							rs.forward(request, response);
						}
					}
					transaction.setAcctNum(customer.getChecking().getAcctNum());
					payor = (request.getParameter("payor") == null) ? null : request.getParameter("payor");
					payee = (request.getParameter("payee") == null) ? null : request.getParameter("payee");
					transaction.setPayor(payor);
					transaction.setPayee(payee);
					balance = customer.getChecking().getBalance() + Math.abs(amount);
					customer.getChecking().setBalance(balance);
					String cBalance = usd.format(balance);
					session.setAttribute("cBalance", cBalance);
					if(customer.getChecking().getTransactionArray() == null) {
						ArrayList<Transaction> transactionArray = new ArrayList<Transaction>();
						customer.getChecking().setTransactionArray(transactionArray);
					}
					customer.getChecking().getTransactionArray().add(transaction);
					session = request.getSession(true);
					session.setAttribute("customer", customer);
					rs = request.getRequestDispatcher("accountscreen.jsp?show=Checking Plus");
					rs.forward(request, response);
					break;
					
				case "sw":
					if(transType == "ELECTRONIC FUNDS TRANSFER") {
						//session.setAttribute("show", "esw");
						transType = null;
						rs = request.getRequestDispatcher("transaction.jsp?show=esw");
						rs.forward(request, response);
						}
					transaction.setAcctNum(customer.getSavings().getAcctNum());
					payor = (request.getParameter("payor") == null) ? null : request.getParameter("payor");
					payee = (request.getParameter("payee") == null) ? null : request.getParameter("payee");
					transaction.setPayor(payor);
					transaction.setPayee(payee);
					balance = customer.getSavings().getBalance() - Math.abs(amount);
					customer.getSavings().setBalance(balance);
					sBalance = usd.format(balance);
					session.setAttribute("sBalance", sBalance);
					if(customer.getSavings().getTransactionArray() == null) {
						ArrayList<Transaction> transactionArray = new ArrayList<Transaction>();
						customer.getSavings().setTransactionArray(transactionArray);
					}
					customer.getSavings().getTransactionArray().add(transaction);
					session = request.getSession(true);
					session.setAttribute("customer", customer);
					rs = request.getRequestDispatcher("accountscreen.jsp?show=Advantage Savings");
					rs.forward(request, response);
					break;
				
				case "cw":
					if(transType == "CHECK" || transType == "ELECTRONIC FUNDS TRANSFER") {
						if(transType == "CHECK") {
							//session.setAttribute("show", "ccw");
							transType = null;
							rs = request.getRequestDispatcher("transaction.jsp?show=ccw");
							rs.forward(request, response);
						} else {
							//session.setAttribute("show", "ecw");
							transType = null;
							rs = request.getRequestDispatcher("transaction.jsp?show=ecw");
							rs.forward(request, response);
						}
					}
					transaction.setAcctNum(customer.getChecking().getAcctNum());
					payor = (request.getParameter("payor") == null) ? null : request.getParameter("payor");
					payee = (request.getParameter("payee") == null) ? null : request.getParameter("payee");
					transaction.setPayor(payor);
					transaction.setPayee(payee);
					balance = customer.getChecking().getBalance() - Math.abs(amount);
					customer.getChecking().setBalance(balance);
					cBalance = usd.format(balance);
					session.setAttribute("cBalance", cBalance);
					if(customer.getChecking().getTransactionArray() == null) {
						ArrayList<Transaction> transactionArray = new ArrayList<Transaction>();
						customer.getChecking().setTransactionArray(transactionArray);
					}
					customer.getChecking().getTransactionArray().add(transaction);
					session = request.getSession(true);
					session.setAttribute("customer", customer);
					rs = request.getRequestDispatcher("accountscreen.jsp?show=Checking Plus");
					rs.forward(request, response);
					break;
					
			}//end of switch


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
