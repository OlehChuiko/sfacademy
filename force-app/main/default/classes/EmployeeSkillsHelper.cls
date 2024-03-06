public  class EmployeeSkillsHelper {
    public static final String EMPLOYEE_QA = 'QA';
    public static final String EMPLOYEE_DEV = 'Software Development';



    public static void updateProjectDevQA(Map<id, EmployeeSkill__c> skillsMap){


        Map<Id,EmployeeCounterHelper> projectToEmployeeCouner = new Map<Id,EmployeeCounterHelper>();

        Id[] pIds = new List<Id>();
        for(EmployeeSkill__c e: skillsMap.values()){
            pIds.add(e.Project__c);
        }



        for (EmployeeSkill__c skillItem: skillsMap.values()){
            if (projectToEmployeeCouner.get(skillItem.Project__c) == null) {
                projectToEmployeeCouner.put(skillItem.Project__c, new EmployeeCounterHelper(0, 0));
                defineEmployeDepartment(projectToEmployeeCouner, skillItem);

            } else {
                defineEmployeDepartment(projectToEmployeeCouner, skillItem);
            }
        }

        List<Project__c> projectToUpdate = new List<Project__c>();

        for (Project__c relatedProject: [Select id, QAs__c, Developers__c FROM Project__c Where id IN : pIds]) {
            relatedProject.Developers__c += projectToEmployeeCouner.get(relatedProject.id).sumOfDevs;
            relatedProject.QAs__c += projectToEmployeeCouner.get(relatedProject.id).sumOfQAs;
            projectToUpdate.add(relatedProject);
        }

        if(!projectToUpdate.isEmpty()) {
            try{
                update projectToUpdate;
            } catch (DmlException e){
                System.debug('DmlException '+ e.getMessage() + ' '+ e.getLineNumber());
            }

        }

    }


    private static void defineEmployeDepartment(Map<Id,EmployeeCounterHelper> projectToEmployeeCouner, EmployeeSkill__c skillItem) {


        if (skillItem.Employee__r.Department__c == EMPLOYEE_DEV) {
            projectToEmployeeCouner.get(skillItem.Project__c).sumOfDevs ++;
        } else if (skillItem.Employee__r.Department__c == EMPLOYEE_QA) {
            projectToEmployeeCouner.get(skillItem.Project__c).sumOfQAs ++;
        }
    }

    private class EmployeeCounterHelper {
        public Integer sumOfQAs {get;set;}
        public Integer sumOfDevs {get;set;}

        public EmployeeCounterHelper(Integer sumOfQAs, Integer sumOfDevs) {
            this.sumOfDevs = sumOfDevs;
            this.sumOfQAs = sumOfQAs;
        }
    }


}