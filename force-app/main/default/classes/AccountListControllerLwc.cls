public with sharing class AccountListControllerLwc {

    @AuraEnabled(Cacheable=true)
    public static List<Account> queryAccountsByRevenue(Decimal annualRevenue) {
        return [SELECT Id, Name FROM Account WHERE AnnualRevenue >=:annualRevenue];
    }
}