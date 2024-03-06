@istest
private class DailyLeadProcessorTest {
    public static string cron_exp='0 0 1 * * ?';  
    static testmethod void testScheduledJob()
        {
		Test.startTest();
            List<Lead> leadlst = new list<lead>() ;
            integer counta=0;
            for(integer i=0;i<200;i++)
                
                {
                 leadlst.add(new lead(lastname='singh',company='Company'+i,status= 'Open'));
                    counta = counta+1;
                }  
                insert leadlst;
            system.debug(counta);
           String jobId = System.schedule('DailyLeadProcessor',CRON_EXP,new DailyLeadProcessor());                        
           Test.stopTest();

        }
            
         }