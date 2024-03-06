global class LeadProcessor  implements Database.Batchable<sObject>, Schedulable, Database.Stateful {

    
    // instance member to retain state across transactions
    global Integer recordsProcessed = 0;

    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT Id, LeadSource FROM Lead '
        );
    }

    global void execute(Database.BatchableContext bc, List<Lead> scope){
        // process each batch of records
       List<Lead> listLeadsNew = new List<Lead>();
        for(Lead l :scope )
        {
            l.leadsource = 'Dreamforce';
            listLeadsNew.add(l);
            ++recordsProcessed;
        }
        update listLeadsNew;
    }    

    global void finish(Database.BatchableContext bc){
        System.debug(recordsProcessed + ' records processed. Shazam!');
      
    }


    global void execute(SchedulableContext context) {
        LeadProcessor leadProcessor = new LeadProcessor();
        Id batchId = Database.executeBatch(leadProcessor, 100); 
    }
}