public without sharing class CustomContactController {

    public CustomContactController(){
       
       Schema.DescribeSObjectResult contactDescribe = CustomContact__c.getSObjectType().getDescribe();
       Schema.DescribeSObjectResult accountDescribe = CustomAccount__c.getSObjectType().getDescribe();
        
       this.customContactAccess = new AccessWrapper( contactDescribe );
       this.customAccountAccess = new AccessWrapper( accountDescribe );
       this.contactFieldAccess = getFieldAccess( contactDescribe );
       this.AccountFieldAccess = getFieldAccess( accountDescribe );
    }


    public AccessWrapper customContactAccess {get;set;}
    public AccessWrapper customAccountAccess {get;set;}
    public Map<String, AccessWrapper> contactFieldAccess {get;set;}
    public Map<String, AccessWrapper> AccountFieldAccess {get;set;}


    public CustomContact__c getContactRecord(){
        return [SELECT Id, Name, FirstName__c, LastName__c, AccountCityFormula__c, CustomAccount__c, 
                		Amount__c, AmountPercent__c,
                		CustomAccount__r.City__c, CustomAccount__r.Name
                FROM CustomContact__c 
                WHERE Name = 'MAIN CONTACT'];
    }
    

    private Map<String, AccessWrapper> getFieldAccess( Schema.DescribeSObjectResult describe ){

        Map<String, AccessWrapper>  result = new Map<String, AccessWrapper>();

        for ( Schema.SObjectField fieldToken : describe.fields.getMap().values() ){
            result.put( String.valueOf( fieldToken ), new AccessWrapper( fieldToken.getDescribe() ) );
        }

        return result;
    }
    

    public class AccessWrapper{
        public Boolean isAccessible {get;set;}
        public Boolean isCreateable {get;set;}
        public Boolean isUpdateable {get;set;}
        public Boolean isDeletable {get;set;}
        
        public AccessWrapper( Schema.DescribeSObjectResult describe ){
            this.isAccessible = describe.isAccessible();
            this.isCreateable = describe.isCreateable();
            this.isUpdateable = describe.isUpdateable();
            this.isDeletable  = describe.isDeletable();
        }
        
        public AccessWrapper( Schema.DescribeFieldResult describe ){
            this.isAccessible = describe.isAccessible();
            this.isCreateable = describe.isCreateable();
            this.isUpdateable = describe.isUpdateable();
        }
    }
    
}