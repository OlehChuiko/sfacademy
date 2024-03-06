@isTest
private class ContactServiceTest {
    @IsTest
    static void createContactTest() {

        Test.startTest();
            Contact contact = ContactService.createContact('John', 'Dale', null);
        Test.stopTest();

        System.assert(contact != null, 'ContactService.createContact Contact failed to be created without Account.');
    }

    @IsTest
    static void createContactWithAccountTest() {
        Account account = TestDataFactory.createAccount();

        Test.startTest();
        Contact contact = ContactService.createContact('John', 'Dale', account.Id);
        Test.stopTest();

        System.assert(contact != null, 'ContactService.createContact Contact failed to be created with Account.');
    }

}