@IsTest
private class AccountModalControllerTest {

    @testSetup
    static void setup(){
        Account newAccount = new Account();
        newAccount.Name = 'TestAccount';
        newAccount.Rating = 'Hot';
        insert newAccount;
    }

    //positive test
    @IsTest
    static void getAccountByRatingTest() {
        Test.startTest();
            List<Account> accounts = AccountModalController.getAccountByRating('Hot');
        Test.stopTest();
        System.assertEquals(1, accounts.size(), 'Method should return one account');
    }

    //negative tests
    @IsTest
    static void getAccountByRatingWrongValueTest() {
        Test.startTest();
        List<Account> accounts = AccountModalController.getAccountByRating('SomeRandom');
        Test.stopTest();
        System.assertEquals(0, accounts.size(), 'Method should return empty list in case of Wrong rating value');
    }

    @IsTest
    static void getAccountByRatingEmptyStringTest() {
        Test.startTest();
        List<Account> accounts = AccountModalController.getAccountByRating('');
        Test.stopTest();
        System.assertEquals(0, accounts.size(), 'Method should return empty list in case of empty rating value');
    }

    @IsTest
    static void getAccountByRatingNullTest() {
        Test.startTest();
        List<Account> accounts = AccountModalController.getAccountByRating(null);
        Test.stopTest();
        System.assertEquals(0, accounts.size(), 'Method should return empty list in case of null rating value');
    }
}