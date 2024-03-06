/** Client-Side Controller **/
({
    doInit: function (component, event, helper) {
        helper.loadStages(component, event,helper);
        /*var options = [
            { value: "1", label: "Option 1" },
            { value: "2", label: "Option 2" },
            { value: "3", label: "Option 3" },
            { value: "4", label: "Option 4" },
            { value: "5", label: "Option 5" },
            { value: "6", label: "Option 6" },
            { value: "7", label: "Option 7" },
            { value: "8", label: "Option 8" },
        ];
        var values = ["7", "2", "3"];
        var required = ["2", "7"];
        component.set("v.listOptions", options);
        component.set("v.defaultOptions", values);
        component.set("v.requiredOptions", required);*/
    },
    save:function(component, event, helper)
        {
            var selectedOptions = component.get("v.defaultOptions");
            var stagesIds = [];
            selectedOptions.forEach(function(item) {
                       stagesIds.push(item.value);
    				});
            var action = component.get("c.saveAllOpportunitySyncStages");
            action.setParams({
                "stagesIds": stagesIds
            });
            action.setCallback(this, function(e){
                if(e.getState()==='SUCCESS')
                {
                    console.log('Success')
                }
            });
            $A.enqueueAction(action);

            helper.hidePopupHelper(component, 'searchModal', 'slds-fade-in-');
            helper.hidePopupHelper(component,'backdrop','slds-backdrop--');
        },
    handleChange: function (cmp, event) {
        // Get the list of the "value" attribute on all the selected options
        var selectedOptionsList = event.getParam("value");
    },
    showModal : function(component, event, helper) {
        helper.showPopupHelper(component, 'searchModal', 'slds-fade-in-');
        helper.showPopupHelper(component,'backdrop','slds-backdrop--');
        helper.loadStages(component, event, helper);
    },
    closeModal:function(component, event, helper) {
        helper.hidePopupHelper(component, 'searchModal', 'slds-fade-in-');
        helper.hidePopupHelper(component,'backdrop','slds-backdrop--');
    }
})