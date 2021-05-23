@istest
public class AccountProcessorTest {
    @isTest static void testmethods(){
                List<Account> accts = new List<Account>();
        for(Integer i=0; i < 2; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA');
            accts.add(acct);
        }
        insert accts;  
        List<id> ids = new List<id>();
        List<contact> c = new List<contact>();
        for(Integer i=0; i < 2; i++) {
            contact acct = new contact(LastName = 'Test Account ' + i , AccountId = accts.get(i).id);
            c.add(acct);
            ids.add(accts.get(i).id);
        }
        insert c;   
        Test.startTest();
            AccountProcessor.countContacts(ids);
        Test.stopTest();
    }

}