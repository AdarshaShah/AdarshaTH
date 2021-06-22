public class ContactAndLeadSearch {
    public static  List<List< SObject>> searchContactsAndLeads(string a){
        List<List<sObject>> searchList = [FIND :a IN Name FIELDS RETURNING Contact,Lead];
        return searchList;
    }
}