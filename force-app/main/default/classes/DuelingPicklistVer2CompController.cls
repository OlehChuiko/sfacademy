public class DuelingPicklistVer2CompController {
/*
    @AuraEnabled
    public static List<SelectOption> getAllOpportunitySyncStages() {
        List<SelectOption> allStages = new List<SelectOption>();
        List<Sync_Opportunity_Stage__mdt> listStages = [SELECT Id,Stage_Name_c__c,Sync_Stage_c__c
                                                        FROM Sync_Opportunity_Stage__mdt];
        for(Sync_Opportunity_Stage__mdt sync : listStages)
        {
            allStages.add(new SelectOption(sync.Id,sync.Stage_Name_c__c,sync.Sync_Stage_c__c));
        }
        return allStages;
    }



    @AuraEnabled
    public static void saveAllOpportunitySyncStages(List<String> stagesIds) {
        List<Sync_Opportunity_Stage__mdt> listStages = [SELECT Id,Stage_Name_c__c,Sync_Stage_c__c
                                                        FROM Sync_Opportunity_Stage__mdt];

        for(Sync_Opportunity_Stage__mdt  stage: listStages){
            stage.Sync_Stage_c__c = false;
			for(String st :stagesIds) {
				if(stage.Id==st){
					stage.Sync_Stage_c__c = true;
				}
			}
        }

        update listStages;


    }*/

    @AuraEnabled
    public static List<SelectOption> getAllOpportunitySyncStages() {
        List<SelectOption> allStages = new List<SelectOption>();
        List<Syn_Opportunity_Stage__c> listStages = Syn_Opportunity_Stage__c.getall().values();
        for(Syn_Opportunity_Stage__c sync : listStages) {
                allStages.add(new SelectOption(sync.Id,sync.Stage_Name__c,sync.Sync_Stage__c));
        }
        return allStages;
    }



    @AuraEnabled
    public static void saveAllOpportunitySyncStages(List<String> stagesIds) {

        List<Syn_Opportunity_Stage__c> listStages = Syn_Opportunity_Stage__c.getall().values();

        for(Syn_Opportunity_Stage__c  stage: listStages){
            stage.Sync_Stage__c = false;
            for(String st :stagesIds) {
                if(stage.Id==st){
                    stage.Sync_Stage__c = true;
                }
            }
        }

        update listStages;


    }
    public class SelectOption{

        public SelectOption(String value, String label, boolean isSelected){
            this.value = value;
            this.label = label;
            this.disabled = false;
            this.selected = isSelected;
        }

        @AuraEnabled
        public String label { get;set; }
        @AuraEnabled
        public String value { get;set; }
        @AuraEnabled
        public Boolean disabled { get;set; }
        @AuraEnabled
        public Boolean selected{get;set;}

    }
}