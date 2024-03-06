@isTest
public class LeadProcessorTest {
	@isTest
    public static void testing()
    {
        List<Lead> listLeads = new List<Lead>();
        for(Integer i=0;i<200;i++)
        {
            Lead newLead = new Lead(LastName = 'name'+i,Company ='Comp',Status = 'Rnd st' );
            listLeads.add(newLead);
        }
        insert listLeads;
        Test.startTest();
        LeadProcessor  l= new LeadProcessor();
        id BatchId = Database.executeBatch(l);
        Test.stopTest();
    }
}