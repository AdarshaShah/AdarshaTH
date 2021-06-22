public class AccountTriggerHandler {
    public static void CreateAccounts(list<Account> accounts){
        for(Account account : accounts){
            account.ShippingState = account.BillingState;
        }
    }
}