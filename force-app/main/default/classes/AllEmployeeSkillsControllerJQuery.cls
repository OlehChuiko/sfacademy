public  class AllEmployeeSkillsControllerJQuery {
	//new Domain
    public List<Employee__c> employeeList {get;set;} 
   
    public List<EmployeeWrapper> empSkillWrapper
    {
        get {
            if(empSkillWrapper == null)
            {
                empSkillWrapper = new List<EmployeeWrapper>();
                try
                {
                    employeeList = [SELECT Id,Name,(SELECT Id,Name, Experience__c,Grade__c, Skill_Category__c FROM EmployeeSkills__r) FROM Employee__c LIMIT 1000];
                    System.debug('List Size = '+employeeList.size());
                }
                catch(QueryException e)
                {
                    System.debug(e);
                }
                for(Employee__c emp:employeeList)
                {                    
                    empSkillWrapper.add(new EmployeeWrapper(emp,emp.EmployeeSkills__r,false));
                }
            }
            return empSkillWrapper;

        }
       private set;

    }
    public void editSkills()
    {
        List<EmployeeSkill__c> empSklToUpdate = new List<EmployeeSkill__c>();
        for(EmployeeWrapper wrapper: empSkillWrapper)
        {
            if(wrapper.checkbox == true)
            {
                empSklToUpdate.addAll(wrapper.skill);
            }
        }
        try
        {
            update empSklToUpdate;
            System.debug('Confirmed save');
            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.Confirm,'Confirmed save'));

        }
        catch(DmlException e)
        {
            System.debug('Failed');
            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.ERROR,'Failed save'));
        }

            
        
    }
     class EmployeeWrapper {
        public Boolean checkbox{get; set;}
        public List<EmployeeSkill__c> skill{get; set;}
        public Employee__c employee{get; set;}
        public EmployeeWrapper(Employee__c employee, List<EmployeeSkill__c> employeeSkill,Boolean checkbox){
            this.checkbox = checkbox;
            this.employee = employee;
            this.skill = employeeSkill;
            
        }
    }
}