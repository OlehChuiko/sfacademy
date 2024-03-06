public with sharing class NetflixAccountController {
    @AuraEnabled
    public static Map<String,Integer> getAccountDetails(String accountId) {
        Map<String,Integer> accDetailsMap = new Map<String,Integer>();
        List<Account> accList = [SELECT Id, NetflixType__c FROM Account WHERE Id =:accountId];

        if (!accList.isEmpty()) {
            if (String.isNotBlank(accList[0].NetflixType__c)) {
                INetflixSubscription subscription = null;
                subscription = NetflixSubsriptionFactory.getInstance(accList[0].NetflixType__c);
                accDetailsMap.put('screens', subscription.getNumberOfScreens());
                accDetailsMap.put('shows', subscription.getNumberOfShows());
            }

        }
        return accDetailsMap;
    }
}