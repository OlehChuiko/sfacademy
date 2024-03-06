({
	showPopupHelper:function(component,componentId, className) {
        var modal = component.find(componentId);
        $A.util.removeClass(modal,className+'hide');
        $A.util.addClass(modal,className+'open');
    },
    hidePopupHelper:function(component,componentId, className) {
        var modal = component.find(componentId);
        $A.util.removeClass(modal,className+'open');
        $A.util.addClass(modal,className+'hide');
    },
    loadStages: function(component, event,helper) {
        var action = component.get("c.getAllOpportunitySyncStages");
        action.setCallback(this, function(e){
            if(e.getState()==='SUCCESS') {
                var selectedOptionArray = new Array();
                var allOptions = e.getReturnValue();

                allOptions.forEach(function(item) {
                    if(item.selected){
                        selectedOptionArray.push(item.value);
                    }
                });

                component.set("v.listOptions", allOptions);
                component.set("v.defaultOptions", selectedOptionArray);
               // component.set("v.requiredOptions", rightOptionArray);

            }
        });
        $A.enqueueAction(action);
     }
})