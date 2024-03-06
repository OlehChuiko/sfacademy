global class DailyLeadProcessor implements Schedulable {
	
 
    global void execute(SchedulableContext ctx) {
        List<Lead> listLeads = [Select Id, LeadSource from Lead where LeadSource = null LIMIT 200];
           
        if(listLeads!=null)
        {
            for(Lead l:listLeads)
            {
                l.LeadSource = 'Dreamforce';
            }
            update listLeads;
        }
    }
    

}