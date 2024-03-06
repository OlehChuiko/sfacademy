public with sharing class AccountModalController {

    @AuraEnabled
    public static List<Account> getAccountByRating(String id) {
        if(String.isBlank(id)) {
            return new List<Account>();
        }
        return [SELECT Id, Name, Rating FROM Account WHERE Rating = :id];
    }
}