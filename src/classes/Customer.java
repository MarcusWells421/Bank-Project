package classes;

import java.util.ArrayList;

import accounts.*;

public class Customer {
	
	private String firstName;
	private String middleName;
	private String lastName;
	private Address address;
	private final String custId;
	private final String custSince;
	private Savings savings;
	private Checking checking;
	private String telephone;
	private String password;
	private ArrayList<Account> accountArray;
	
	public Customer(String firstName, String middleName, String lastName, Address address, String custId,
			String custSince, String telephone, String password) {
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.address = address;
		this.custId = custId;
		this.custSince = custSince;
		this.telephone = telephone;
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Savings getSavings() {
		return savings;
	}

	public void setSavings(Savings savings) {
		this.savings = savings;
	}

	public Checking getChecking() {
		return checking;
	}

	public void setChecking(Checking checking) {
		this.checking = checking;
	}

	public String getCustId() {
		return custId;
	}

	public String getCustSince() {
		return custSince;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ArrayList<Account> getAccountArray() {
		return accountArray;
	}

	public void setAccountArray(ArrayList<Account> accountArray) {
		this.accountArray = accountArray;
	}
	
}