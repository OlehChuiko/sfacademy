@isTest
private class ParkLocatorTest {
	 @isTest static void testCallout() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        List<String> res = new List<String>();
         List<String> expectValue = new List<String>{'Park1','Park2','Park3'};
         res = ParkLocator.country('India');
        // Verify that a fake result is returned
        System.assertEquals(expectValue, res); 
    }
}