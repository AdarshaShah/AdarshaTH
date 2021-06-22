public class ContactSearch {
    public static List<Contact> searchForContacts(string a, string b){
        List<Contact> contactsList = [select Name from contact where LastName = :a and MailingPostalCode = :b];
        return contactsList;
    }
}