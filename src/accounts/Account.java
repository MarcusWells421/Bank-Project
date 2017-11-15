package accounts;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public abstract class Account {

	protected final String acctNum;
	protected double balance;
	protected final String openSince;
	protected double interest;
	protected Transaction transaction;
	protected ArrayList<Transaction> transactionArray;
	protected String acctName = "You have no accounts";

	public Account() {
		this.acctNum = null;
		this.openSince = null;
		}

	public Account(String acctNum, double balance, String openSince, double interest) {
		this.acctNum = acctNumGen();
		this.balance = balance;
		this.openSince = date(LocalDateTime.now());
		this.interest = interest;
		
	}

	public String getAcctNum() {
		return acctNum;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public String getOpenSince() {
		return openSince;
	}

	public double getInterest() {
		return interest;
	}

	public void setInterest(double interest) {
		this.interest = interest;
	}
	public Transaction getTransaction() {
		return transaction;
	}

	public void setTransaction(Transaction transaction) {
		this.transaction = transaction;
	}

	public ArrayList<Transaction> getTransactionArray() {
		return transactionArray;
	}

	public void setTransactionArray(ArrayList<Transaction> transactionArray) {
		this.transactionArray = transactionArray;
	}

	public String getAcctName() {
		return acctName;
	}
	
	public String acctNumGen() {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSS");
		String idGenerator = dateFormat.format(LocalDateTime.now());
		return idGenerator;
	}
	public String date(LocalDateTime bubbles) {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		String date = dateFormat.format(bubbles);
		return date;
	}

}
