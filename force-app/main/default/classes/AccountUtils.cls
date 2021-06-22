public class AccountUtils {
    public static list<Account> accountsByState(String state){
        return [select id, name from Account where BillingState =:state];
    }
}