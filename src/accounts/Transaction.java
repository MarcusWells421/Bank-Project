package accounts;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Transaction {

	protected final String transNum;
	protected final String transDate;
	protected String transType;
	protected String payor;
	protected String payee;
	protected double amount;
	protected String custID;
	protected String acctNum;

	public Transaction() {
	this.transNum = transNumGen();
	this.transDate = date(LocalDateTime.now());
	}

	public Transaction(String transType, double amount, String custID) {
		this.transNum = transNumGen();
		this.transDate = date(LocalDateTime.now());
		this.transType = transType;
		this.amount = amount;
		this.custID = custID;
	}
	
	public String getTransNum() {
		return transNum;
	}
	public String getTransDate() {
		return transDate;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public String getPayor() {
		return payor;
	}
	public void setPayor(String payor) {
		this.payor = payor;
	}
	public String getPayee() {
		return payee;
	}
	public void setPayee(String payee) {
		this.payee = payee;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getCusNum() {
		return custID;
	}

	public void setCusNum(String cusNum) {
		this.custID = cusNum;
	}

	public String getAcctNum() {
		return acctNum;
	}

	public void setAcctNum(String acctNum) {
		this.acctNum = acctNum;
	}

	protected String transNumGen() {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSS");
		String idGenerator = dateFormat.format(LocalDateTime.now());
		return idGenerator;
	}
	protected String date(LocalDateTime now) {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		String date = dateFormat.format(now);
		return date;
	}

	@Override
	public String toString() {
		return transNum + ", " + transDate + ", " + transType + ", " + (payor == null ? "" : payor + ", ") + (payee == null ? "" : payee + ", ") + Math.abs(amount);
	}

}
