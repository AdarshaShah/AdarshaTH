public class AddPrimaryContact implements Queueable {
    private String State;
    private Contact ContactRecord;
    public AddPrimaryContact(Contact record, string State) {
        this.ContactRecord = record;
        this.state = State;
    }
    public void execute(QueueableContext context) {
        list<account> accounts = [SELECT ID, BillingState  from account where BillingState =:State limit 200];
        list<contact> contactList = new list<contact>();
        for (Account account : accounts) {
          	Contact cont = ContactRecord.clone(false, false, false, false);
			cont.AccountId = account.id;
            contactList.add(cont);
        }
        update contactList;
    }
}