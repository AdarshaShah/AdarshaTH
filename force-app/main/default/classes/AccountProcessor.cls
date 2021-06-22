public class AccountProcessor {
    @future
    public static void countContacts(list<id> AccountIds){
       AggregateResult[] groupedContactsResults = [select AccountId, count(id) from contact where AccountId in :AccountIds group by AccountId];
        list<account> accountsListToUpdate = new list<account>();
        for(AggregateResult ar : groupedContactsResults){
            Account acc = new account();
            acc.Id = (id) ar.get('AccountId');
            acc.Number_of_Contacts__c =integer.valueOf(ar.get('expr0'));
            accountsListToUpdate.add(acc);
        }
        update accountsListToUpdate;
    }
}