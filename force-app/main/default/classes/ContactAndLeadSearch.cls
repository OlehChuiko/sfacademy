public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String lastName)
    {
        Contact con = new Contact(LastName = 'Smith');
        Lead led = new Lead(LastName = 'Smith');
        
        List<List<sObject>> searchlist =  [FIND :lastName IN NAME FIELDS 
                   RETURNING Contact(Name),Lead(FirstName)];
        System.debug(searchList);
    	return searchList;
    }
}