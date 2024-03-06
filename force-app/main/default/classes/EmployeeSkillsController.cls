public class EmployeeSkillsController {
    
    public Employee__c employee;    
    public List<EmployeeSkillWrapper> employeeSkillWrapperList;    
    List<EmployeeSkill__c> employeeSkills;
    
    public EmployeeSkillsController(){
         Id employeeId = ApexPages.currentPage().getParameters().get('Id');
        	System.debug('ID'+employeeId);
        	System.debug('Here in controller');
        if(employee == null) {
         employee = new Employee__c();
        }
   
        if(employeeId != null){
        if(employeeSkills == null) {
         employeeSkills = new List<EmployeeSkill__c>();
        }
            employeeSkills = getEmployeeSkillList(employeeId);
        }
        if(employeeSkillWrapperList == null){
            employeeSkillWrapperList = new List<EmployeeSkillWrapper>();                
        }
        for(EmployeeSkill__c employeeSkill : employeeSkills){
            employeeSkillWrapperList.add(new EmployeeSkillWrapper(false, employeeSkill));
        }
    }
    
    public List<EmployeeSkill__c> getEmployeeSkillList(id employeeId)
    {
        System.debug('Here in return');
        return [SELECT Id, Name, Experience__c, Grade__c, Skill_Category__c ,Employee_Level__c ,Project__c ,Status__c,Employee__c
                FROM EmployeeSkill__c WHERE Employee__r.Id =: employeeId];
    }
    
    public List<EmployeeSkillWrapper> getEmployeeSkillWrapper(){
        System.debug('Here in getEmployeeSkillWrapper');
        return employeeSkillWrapperList;
    }

    class EmployeeSkillWrapper {
        public Boolean checkbox{get; set;}
        public EmployeeSkill__c skill{get; set;}
        public EmployeeSkillWrapper(Boolean checkbox, EmployeeSkill__c employeeSkill){
            System.debug('Here in EmployeeSkillWrapper');
            this.checkbox = checkbox;
            this.skill = employeeSkill;
        }
    }
    
    public void editSkills(){
        employeeSkills.clear();
        for(EmployeeSkillWrapper skill : employeeSkillWrapperList){
            employeeSkills.add(skill.skill);            
        }
        try{
            update employeeSkills;
        }catch(DMLException e){          
        }
        
    }
    
    public void deleteSkills(){      
        employeeSkills.clear();
        for(EmployeeSkillWrapper skill : employeeSkillWrapperList){
            if(skill.checkbox == true){
                employeeSkills.add(skill.skill);
            }                        
        }
           
         try{
             delete employeeSkills; 
        }catch(DMLException e){          
        }
   		 }
    

}