public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer count, string lastNameInput){
        List<Contact> contList = new List<Contact>();
        for(integer i=1;i<=count;i++){
            contList.add(new Contact(FirstName = 'firstName ' + i,
                                    LastName = lastNameInput));
        }
    	return contList; 
    }
}