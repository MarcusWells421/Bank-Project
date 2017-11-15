package accounts;

public class Savings extends Account {
	
	protected final String acctName;
	
	public Savings() {
		this.acctName = "Advantage Savings";
	}
	
	public Savings(String acctNum, double balance, String openSince, double interest) {
		super(acctNum, balance, openSince, interest);
		this.acctName = "Advantage Savings";
	}

	@Override
	public String getAcctNum() {
		return this.acctNum;
	}

	@Override
	public double getBalance() {
		return balance;
	}
	@Override
	public void setBalance(double balance) {
		this.balance = balance;
	}

	@Override
	public String getOpenSince() {
		return openSince;
	}

	@Override
	public double getInterest() {
		return interest;
	}

	@Override
	public void setInterest(double interest) {
		this.interest = interest;
	}
	
	@Override
	public String getAcctName() {
		return acctName;
	}
	
	public void withdrawal(String acctNum, double amount) {
	}

}
