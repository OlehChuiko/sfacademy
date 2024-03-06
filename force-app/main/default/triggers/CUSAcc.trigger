trigger CUSAcc on CustomAccount__c (before insert) {
    for(CustomAccount__c acc : Trigger.New){
        acc.Sum__c = 12;
    }
}