public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String postalCode)
    {
        List<Contact> thislist = [SELECT Id,Name,LastName, MailingPostalCode 
                                  FROM Contact 
                                  WHERE LastName =:lastName AND MailingPostalCode =:postalCode];
        
        return  thislist;
    }
}