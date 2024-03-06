@isTest
public class AccountProcessorTest {
	@isTest
    public static void testCountContacts()
    {
        Account a = new Account(Name = 'Aleg');
        insert a;
        
        Contact c = new Contact(FirstName = 'Lila',LastName = 'Galina',accountId = a.Id);
        insert c;
        
        Set<Id> setAccIds = new Set<Id>();
        setAccIds.add(a.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(SetAccIds);
        Test.stopTest();
        
        Account acc = [SELECT Number_of_Contacts__c FROM Account WHERE id=:a.id LIMIT 1];
        System.assert(acc.Number_of_contacts__c==1);
    }
}