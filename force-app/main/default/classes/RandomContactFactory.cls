public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numCon, String strLastName)
    {
        List<Contact> myList = new List<Contact>();
        for(Integer i=0;i<numCon;i++)
        {
            strLastName = 'name'+ i;
            Contact c = new Contact(LastName=strLastName,FirstName = strLastName);
            myList.add(c);
        }
        return myList;
    }
}