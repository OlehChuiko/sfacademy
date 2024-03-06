public class PopulateFirstPriorityField {
    @InvocableMethod
   public static void setProjectToFirstPriorityField(Id[] pIds) {
        List<Project__c> projects = [
            SELECT Id, Importancy__c 
            FROM Project__c 
            WHERE Id IN :pIds];
       
        
       List<Employee__c> employees = [
        SELECT Id, Employee__c.First_Priority__c
        FROM Employee__c 
        WHERE Id IN (
            SELECT Employee__c 
            FROM EmployeeSkill__c 
            WHERE Project__r.Id =: pIds)];
        
        List<EmployeeSkill__c> employeeSkills = [
            SELECT Id, EmployeeSkill__c.Project__c
            FROM EmployeeSkill__c 
            WHERE Project__r.Id IN :pIds];
        
        for(Project__c p: projects){            
            for(EmployeeSkill__c e : employeeSkills){
                if(p.Id == e.Project__c){
                    for(Employee__c emp : employees){
                        emp.First_Priority__c = p.Id;
                    }
             }             
         }       
        }
        
        update employees;
               
   }    
}