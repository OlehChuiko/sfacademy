trigger AccountTrigger on Account (before insert ,before delete) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            for(Account account : Trigger.New){
                account.Description = 'LiveTesting';
            }
        }
    }
    if (Trigger.isBefore) {
        if (Trigger.isDelete) {
            AccountTriggerHandler.onBeforeDelete(Trigger.oldMap);
        }
    }
}