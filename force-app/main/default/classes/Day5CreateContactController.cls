public class Day5CreateContactController {
  
     public List<CustomContact__c> getContacts() { 
         return [SELECT Id, Name, FirstName__c, LastName__c
             FROM CustomContact__c];
    }
    
	public CustomContact__c customContact{
        get{
            if(customContact == null)
            {
                customContact = new CustomContact__c();
                
            }
            return customContact;
        }
         set;
    }
    
	
		public PageReference save(){
        System.debug(customContact.FirstName__c+' '+customContact.Id);
             if(customContact.Id == null)
                {
                   try{                       
                        insert customContact;
                        customContact = null;
                            
                    }catch(DMLException e)
                    {
                        return null;
                    }        
                }else
                {
                    update customContact;
                    customContact = null;
                }
            
        return null;
	}


    
    public Id currentRecordId{get;set;}
    
    public void deleteRecord(){
        delete new CustomContact__c(
            Id = currentRecordId
        );       
    
    }
    
     public void editRecord(){
            customContact = new CustomContact__c(Id = currentRecordId); 
        }

    
    
}