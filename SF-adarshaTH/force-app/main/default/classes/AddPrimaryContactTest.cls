@istest 
public class AddPrimaryContactTest {
	@isTest 
    static void testmethods(){
                List<Account> accts = new List<Account>();
        for(Integer i=0; i < 50; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'NY');
            accts.add(acct);
        }
        for(Integer i=0; i < 50; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            accts.add(acct);
        }
        insert accts;  
        contact ct = new contact(LastName = 'Test Account ');
        insert ct;
        test.startTest();
        AddPrimaryContact apc = new AddPrimaryContact(ct, 'CA');
        System.enqueueJob(apc);
        test.stopTest();
    }
}