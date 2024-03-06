trigger AccountAddressTrigger on Account (before insert,before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            System.debug('Account Trigger Fired on Before Insert');
        
        }
        if(Trigger.isUpdate){
            System.debug('Account Trigger Fired on Before Update');
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            System.debug('Account Trigger Fired on After Insert');
        
        }
        if(Trigger.isUpdate){
            System.debug('Account Trigger Fired on After Update');
        }
    }
    for(Account acc: Trigger.new)
    {
        if(acc.Match_Billing_Address__c == true)
        {
            acc.ShippingPostalCode = acc.BillingPostalCode;
        }
    }
}