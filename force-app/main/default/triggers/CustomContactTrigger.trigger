trigger CustomContactTrigger on CustomContact__c (before update,after insert, after update, after delete) {
    
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            System.debug('Trigger before update');
            System.debug('Trigger.old');
            System.debug(Trigger.old);
            System.debug('Trigger.new');
            System.debug(Trigger.new);
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
          System.debug('Trigger before update');
            System.debug('Trigger.old');
            System.debug(Trigger.old);
            System.debug('Trigger.new');
            System.debug(Trigger.new);
        }
    }
    
}