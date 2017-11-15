package application;
import classes.*;

import java.text.NumberFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import accounts.Checking;
import accounts.Savings;

public class Application {

	public static void main(String[] args) throws InterruptedException {

		NumberFormat usd = NumberFormat.getCurrencyInstance();
		NumberFormat intPercent = NumberFormat.getNumberInstance();
		intPercent.setMinimumFractionDigits(3);
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		DateTimeFormatter dateFormat2 = DateTimeFormatter.ofPattern("yyyyMMdd");
		DateTimeFormatter dateFormat3 = DateTimeFormatter.ofPattern("HHmmssSS");
		String date = dateFormat.format(LocalDateTime.now());
		String idGenerator2 = dateFormat2.format(LocalDateTime.now());
		String idGenerator3 = dateFormat3.format(LocalDateTime.now());
		
		Address address = new Address("2119 Olive Street", "St. Louis", "MO", "63103");
		Savings sAcct = new Savings(acctNumGen(), 421.0, date(), .021);
		Thread.sleep(1000);
		Checking cAcct = new Checking(acctNumGen(), 547.0, date(), .011);
		Customer cus1 = new Customer("Marcus","Anthony","Wells", address, idGenerator2 + "4947154" + "1", date, "3144947154", "password");
		cus1.setSavings(sAcct);
		cus1.setChecking(cAcct);
		/*Address address2 = new Address("635 Cheerios Drive", "O'Fallon", "IL", "62104");
		Savings sAcct2 = new Savings(idGenerator2 + idGenerator3, 9314.87, LocalDateTime.now(), .021);
		Thread.sleep(1000);
		Checking cAcct2 = new Checking(idGenerator2 + idGenerator3, 1675.28, LocalDateTime.now(), .011);
		Customer cus2 = new Customer("Erin", null,"Walker", address2, idGenerator2 + "3972167" + "1", LocalDateTime.now(), "6183972167", sAcct2, cAcct2);*/

		ArrayList<Customer> bank = new ArrayList<Customer>();
		bank.add(cus1);
		//bank.add(cus2);
		
		Thread.sleep(1000);
		String date2 = dateFormat3.format(LocalDateTime.now()); 
		System.out.println(date2.compareTo(date));
		date.compareTo(date2);
		System.out.println(LocalDateTime.now().compareTo(LocalDateTime.of(2017, 05, 25, 12, 00)));	
		
		
		for(Customer x : bank) {
			System.out.print(x.getFirstName() + " " + (x.getMiddleName() == null || x.getMiddleName() == "" || x.getMiddleName() == " " ? "" : x.getMiddleName() + " ") + x.getLastName() + "\r\n" + 
							x.getAddress() + "\r\n" +
							parsePhone(x.getTelephone()) + "\r\n\r\n" +
							"Customer Number: " + x.getCustId() + "\r\n" +
							"Customer Since: " + x.getCustSince() + "\r\n\r\n");
			if(x.getSavings() != null) {
			System.out.println("************Savings Account Information************" + "\r\n" +
								"Account Number: " + x.getSavings().getAcctNum() + "\r\n" +
								"Current Balance: " + usd.format(x.getSavings().getBalance()) + "\r\n" +
								"Current Interest Rate: " + intPercent.format(x.getSavings().getInterest()*100) + "%\r\n" +
								"Account Opened: " + x.getSavings().getOpenSince() + "\r\n" +
								"****************************************************" + "\r\n");
			} else {
				System.out.println("No Savings Account\r\n");
			}
			if(x.getChecking() != null) {
				System.out.println("************Checking Account Information************" + "\r\n" +
						"Account Number: " + x.getChecking().getAcctNum() + "\r\n" +
						"Current Balance: " + usd.format(x.getChecking().getBalance()) + "\r\n" +
						"Current Interest Rate: " + intPercent.format(x.getChecking().getInterest()*100) + "%\r\n" +
						"Account Opened: " + x.getChecking().getOpenSince() + "\r\n" +
						"****************************************************\r\n");
				} else {
					System.out.println("No Checking Account\r\n");
				}
			System.out.println("End of Customer Summary for " + x.getFirstName() + " " + x.getLastName() + "\r\n"
					+ "-----------------------------------------------------------------------------------------\r\n");
		}
		
	}
	public static String parsePhone(String phone) {
		return "(" + phone.substring(0,3) + ") " + phone.substring(3, 6) + "-" + phone.substring(6, 10);
	}
	public static String acctNumGen() {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSS");
		String idGenerator = dateFormat.format(LocalDateTime.now());
		return idGenerator;
	}
	public static String date() {
		DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("MM/dd/yyyy");
		String date = dateFormat.format(LocalDateTime.now());
		return date;
	}

}		

