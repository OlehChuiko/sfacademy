@isTest
private class AccountManagerTest {
    @isTest static void testgetAccount()
    {
        id newId = createTestRecord();
         RestRequest request = new RestRequest();
        request.requestUri =
            'https://oleh-chuyko-dev-ed.my.salesforce.com/services/apexrest/Accounts/'+newId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account acc = AccountManager.getAccount();
        System.assert(acc!=null);
        System.assertEquals(acc.Name,'Some');
    }
    static Id createTestRecord() {
        // Create test record
        Account AccTest = new Account( Name = 'Some'
            );
        insert AccTest;
        return AccTest.Id;
    }          
}