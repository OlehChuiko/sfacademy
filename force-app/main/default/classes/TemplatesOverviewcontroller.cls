public class TemplatesOverviewcontroller {

    String templates;
        //If multiselect is false, countries must be of type String
        //String countries;
        
        public PageReference test() {
            return null;
        }
    
    public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('Milestone','Milestone'));
        options.add(new SelectOption('Document','Document'));
        options.add(new SelectOption('MEXICO','Mexico'));
        return options;
    }
    
    public String getTemplates() {
        //If multiselect is false, countries must be of type String
        return templates;
    }
    
    public void setTemplates(String templates) {
        //If multiselect is false, countries must be of type String
        this.templates = templates;
    }
    
}