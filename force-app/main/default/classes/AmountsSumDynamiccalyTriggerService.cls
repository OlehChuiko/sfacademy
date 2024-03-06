public class AmountsSumDynamiccalyTriggerService {
    //Here i am
    public List<String> getAllAmountFields(){
        Schema.DescribeSObjectResult a_desc = CustomContact__c.sObjectType.getDescribe(); 
        Map<String, Schema.SObjectField> a_fields = a_desc.fields.getMap();
        
        List<String> fields = new List<String>();
        /*for(String fieldName : fieldMap.keySet()){
            if(Pattern.matches('Amount_[0-9]+__c', fieldName)){
                amountFields.add(fieldName);
            }
        }*/
        
        for(Schema.sObjectField fld : a_fields.values()){
            String[] strArr = fld.getDescribe().getName().split('_');            
            if(strArr[0].startsWith('Amount') && strArr[1].isNumeric()){
                fields.add(fld.getDescribe().getName());
            }                
     }
        return fields;
    }
    
        public Double getSumOfAllAmountFields(List<String> fields, CustomContact__c customContact){
            Double summ = 0;
            for(String fieldName : fields){ 
             Object ParentFieldValue = customContact.get(fieldName);
                if(ParentFieldValue != Null){
                 summ += (Double)ParentFieldValue;    
                }               
            }
            
            return summ;
        }
    
}