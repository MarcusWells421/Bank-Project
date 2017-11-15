package accounts;

public class Checking extends Account {
	
	protected final String acctName;
	
	public Checking() {
		this.acctName = "Checking Plus+";
	}

	public Checking(String acctNum, double balance, String openSince, double interest) {
		super(acctNum, balance, openSince, interest);
		this.acctName = "Checking Plus+";
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
