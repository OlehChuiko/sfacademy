public class AccountProcessor {
    @future(callout =true)
    public static void countContacts(Set<Id> accIds)
    {
        List<Account> listAccounts = [SELECT id,Number_of_Contacts__c,(SELECT id FROM Contacts) FROM Account WHERE id=:accIds];
        for(Account acc :listAccounts )
        {
         List<Contact> cont = acc.Contacts;
            acc.Number_of_Contacts__c = cont.size();
        }
        update listAccounts;
    }
}