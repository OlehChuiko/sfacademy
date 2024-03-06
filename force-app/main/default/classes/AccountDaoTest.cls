@IsTest
private class AccountDaoTest {

    @testSetup
    static void dataSetup() {
        // Prepare the data
        Account newAccount1 = TestDataFactory.createAccount('Test1');
        Account newAccount2 = TestDataFactory.createAccount('Test2');

        Contact contact1 = new Contact( AccountId = newAccount1.Id, FirstName = 'Steve', LastName = 'Linian' );
        Contact contact2 = new Contact( AccountId = newAccount1.Id, FirstName = 'Ricardo', LastName = 'Maigad' );
        Contact contact3 = new Contact( AccountId = newAccount2.Id, FirstName = 'Vivian', LastName = 'Lopez' );
        insert  new List<Contact>{contact1, contact2, contact3};
    }

    @IsTest
    static void getAccountsToContactsMapTest() {

        //Prepare the data to work with
        List<Account> accounts = [
            SELECT Id, Name
            FROM Account
            ORDER BY Name DESC];
        Id acc1Id = accounts.get(0).Id;
        Id acc2Id = accounts.get(1).Id;
        //Test
        Test.startTest();
        Map<Id, List<Contact>> resultingMap =
            AccountDao.getAccountsToContactsMap(
                new Set<Id>{
                    acc1Id,
                    acc2Id
                }
            );
        Test.stopTest();
        // Check the  results
        System.assertEquals(
            1,
            resultingMap.get(acc1Id).size(),
            'AccountDao.getAccountsToContactsMap returns the wrong amount of Contact records.'
        );
        System.assertEquals(
            2,
            resultingMap.get(acc2Id).size(),
            'AccountDao.getAccountsToContactsMap returns the wrong amount of Contact records.'
        );
    }
}