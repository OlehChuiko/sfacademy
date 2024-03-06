public without sharing class CustomContactTriggerService {
    
    public Set<Id> filterContactsToRecalculateAccountSum( Map<Id, CustomContact__c> oldMap, List<CustomContact__c> newValues ){
        	
        Set<Id> accountIds = new Set<Id>();
        
        //NEW
        if ( oldMap == null ){
            for ( CustomContact__c cont : newValues ){
                if ( isMatchesFilterAccountSum( cont ) && cont.Amount__c != null ){
                    accountIds.add( cont.CustomAccount__c );
                }
            }
        }
        
        //update
        else if ( oldMap != null && newValues != null ){
			
            for ( CustomContact__c cont : newValues ){
                CustomContact__c oldCont = oldMap.get( cont.Id );
                
                if ( isMatchesFilterAccountSum( cont ) && cont.Amount__c != oldCont.Amount__c ){
                    accountIds.add( cont.CustomAccount__c );
                }
            }
        }
        
        //delete
        else if ( newValues == null ){
            for ( CustomContact__c cont : oldMap.values() ){
                if ( isMatchesFilterAccountSum( cont ) && cont.Amount__c != null ){
                    accountIds.add( cont.CustomAccount__c );
                }
            }
        }
        
        return accountIds;
    }
    
    private Boolean isMatchesFilterAccountSum( CustomContact__c cont ){
        return cont.CustomAccount__c != null;
    }
    
    
    public void recalculateAccountSum( Set<Id> accountIds ){
               
        //filter MUST be
        if ( accountIds.isEmpty() ){
            return;
        }        
        
       List<CustomAccount__c> accountsToUpdate = new List<CustomAccount__c>();
            
        for ( AggregateResult aggrRes : getGroupedSumAmountByAccountIds( accountIds ) ){
            
            Id accountId = (Id) aggrRes.get( 'CustomAccount__c' );
            Decimal sum = (Decimal) aggrRes.get( 'sum' );
            
            accountsToUpdate.add( 
                new CustomAccount__c( 
                    Id = accountId,
                    Sum__c = sum
                ) 
            );
            
            update accountsToUpdate;
        }
        
    }
    
    
    public List<AggregateResult> getGroupedSumAmountByAccountIds ( Set<Id> accountIds ){
        return [SELECT CustomAccount__c, SUM(Amount__c) sum
                FROM CustomContact__c
                WHERE Amount__c != NULL
                GROUP BY CustomAccount__c];
    }
    
}