public class AllEmployeeSkillsController {
   
    public Integer noOfRecords{get; set;}
    public Integer size{get;set;}

    public ApexPages.StandardSetController setCon {
        get {
            if(setCon == null) {
                size = 5;

                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
                    [SELECT id,Name,(SELECT id,Name ,Skill_Category__c,Experience__c FROM EmployeeSkills__r) FROM Employee__c LIMIT 1000]));
                setCon.setPageSize(size);
                noOfRecords = setCon.getResultSize();
            }
            return setCon;
        }
        set;
    }
   
    public List<Employee__c> getEmployees() {
        return (List<Employee__c>) setCon.getRecords();
    }

    public pageReference refresh() {
        setCon = null;
        getEmployees(); 
        setCon.setPageNumber(1);
        return null;
    }  

}