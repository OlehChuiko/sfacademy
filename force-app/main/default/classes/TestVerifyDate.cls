@isTest
public class TestVerifyDate {
    @isTest static void testChechDates()
    {
        Date date1 = date.today();
        Date date2 = date1.addDays(29);
        Date res = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(res,date2);
    }
    @isTest static void testDateOver()
    {
        Date date1 = date.today();
        Date date2 = date1.addDays(31);
        Date res = VerifyDate.CheckDates(date1, date2);
        System.assertNotEquals(res, date1);
        
    }
}