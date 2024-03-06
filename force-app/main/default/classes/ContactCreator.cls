public class ContactCreator {

    
    public String name {get;set;}
    public String firstName {get;set;}
    public String lastName {get;set;}
    public String accountLookupId {get;set;}
    
    
    public PageReference create2(){
    	CustomContact__c newRecord = new CustomContact__c( 
            Name = this.name,
            FirstName__c = this.firstName,
            LastName__c = this.lastName
       	);
        
        if ( ! String.isBlank( accountLookupId )){
            newRecord.CustomAccount__c = accountLookupId;
		}
        
        insert newRecord;
        
        return new PageReference( '/' + newRecord.Id );
    }
    
    public Boolean getIsVisibleContact(){
        return CustomContact__c.getSObjectType().getDescribe().isCreateable();
    }
}