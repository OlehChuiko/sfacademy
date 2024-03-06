public class Lesson3_contactListController {

    public List<ContactWrapper> getContacts() {
        
        List<CustomContact__c> contacts = 
            [SELECT Id, Name, FirstName__c, LastName__c
             FROM CustomContact__c];
        
        List<ContactWrapper> contWraps = new List<ContactWrapper>();
        for ( CustomContact__c ccont : contacts ){
            contWraps.add( new ContactWrapper( ccont ) );
        }
        
        return contWraps;
    }
    

    public Boolean getHasContactAccessed(){
        return CustomContact__c.getSObjectType().getDescribe().isAccessible();
    }

    
    public class ContactWrapper{
        
        public String firstName {get;set;}
        public String lastName {get;set;}
        public Id recordId {get;set;}
        
        public ContactWrapper( CustomContact__c cont ){
            this.firstName = cont.FirstName__c;
            this.lastName = cont.LastName__c;
            this.recordId = cont.Id;
        }  
        
    }
    

    
}