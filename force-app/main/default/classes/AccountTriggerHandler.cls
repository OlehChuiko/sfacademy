public with sharing class AccountTriggerHandler {
    public static void onBeforeDelete(Map<Id,Account> oldMap){
        AccountService.preventDeletionOfAccountWithOpportunities(oldMap);
    }
}