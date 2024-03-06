@isTest
private class AccountTriggerTest {
    @isTest static void testDeleteAccountWithOneOpportunity() {

        List<Account> accounts = TestDataFactory.createAccountsWithOpps(1,1);
        Test.startTest();
        Database.DeleteResult result = Database.delete(accounts.get(0), false);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals(
            'Cannot delete account with related opportunities.',
            result.getErrors()[0].getMessage(),
            'AccountTrigger : Cannot delete account with related opportunities. '
        );
    }
}