trigger AmountsSumDynamiccalyTrigger on CustomContact__c (before insert, before update) {
 if ( Trigger.isBefore ){
        
        if ( Trigger.isInsert || Trigger.isUpdate ){
            
            AmountsSumDynamiccalyTriggerService service = new AmountsSumDynamiccalyTriggerService();
            List<CustomContact__c> customContacts = new List<CustomContact__c>();
            for(CustomContact__c customContact : Trigger.new){
                List<String> fields = service.getAllAmountFields();
             Double summ = service.getSumOfAllAmountFields(fields, customContact);
                customContact.SUM_dynamic__c = summ;   
                
            }
        }       
    }
}