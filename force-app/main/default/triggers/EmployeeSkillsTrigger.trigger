trigger EmployeeSkillsTrigger on EmployeeSkill__c (before insert, before update, before delete, after insert, after update, after delete, after undelete ) {


    if (Trigger.isAfter) {
        if (Trigger.isInsert) {

            EmployeeSkillsTriggerHandler.onAfterInsert(Trigger.newMap);
        } else if (Trigger.isUpdate) {

            EmployeeSkillsTriggerHandler.onAfterUpdate(Trigger.newMap, Trigger.oldMap);
        } else if (Trigger.isDelete) {

            EmployeeSkillsTriggerHandler.onAfterDelete(Trigger.newMap);
        } else if (Trigger.isUndelete) {

            EmployeeSkillsTriggerHandler.onAfterUnDelete(Trigger.newMap);
        }
    }

}