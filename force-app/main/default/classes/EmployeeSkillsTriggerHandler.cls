public  class EmployeeSkillsTriggerHandler {

    public static void onAfterInsert(Map<id, EmployeeSkill__c> insertdNewMap) {

        EmployeeSkillsHelper.updateProjectDevQA(insertdNewMap);
    }

    public static void onAfterUpdate(Map<id, EmployeeSkill__c> insertdNewMap, Map<id, EmployeeSkill__c> insertdOldMap) {


    }

    public static void onAfterDelete(Map<id, EmployeeSkill__c> deletedMap) {


    }

    public static void onAfterUnDelete(Map<id, EmployeeSkill__c> undeletedMap) {


    }

}