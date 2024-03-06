@isTest
private class TestRestrictContactByName{
		
    @isTest static void TestRestrictFunc()
    {
        Contact con = new Contact(LastName = 'INVALIDNAME',FirstName = 'Some');
        Test.startTest();
        try{
            insert con;
        }catch(Exception e)
        {
            Test.stopTest();
        }
    }
}