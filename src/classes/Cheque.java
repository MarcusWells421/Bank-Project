package classes;

import java.util.Date;

import accounts.Transaction;

public class Cheque extends Transaction {
		//String transNum; Date transDate; String transType; Name payor; Name payee; double amount;
		private String chequeNum;
		private Date chequeDate;
		private String payor;
		private String payee;
		private double amount;
		
	public Cheque() {}
	
	public Cheque(String chequeNum, Date chequeDate, String payor, String payee, double amount) {
		this.chequeNum = chequeNum;
		this.chequeDate = chequeDate;
		this.payor = payor;
		this.payee = payee;
		this.amount = amount;
	}

	public String getChequeNum() {
		return chequeNum;
	}

	public void setChequeNum(String chequeNum) {
		this.chequeNum = chequeNum;
	}

	public Date getChequeDate() {
		return chequeDate;
	}

	public void setChequeDate(Date chequeDate) {
		this.chequeDate = chequeDate;
	}

	@Override
	public String toString() {
		return "Ck# " + chequeNum + "   Dated " + chequeDate + "   Amt: " + amount + "   Debited from " + payor + " / Credited to " + payee + "\r\n";
	}
}