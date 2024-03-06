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

                var leftOption = component.find('leftOptions');
                var rightOption = component.find('rightOptions');
                var leftOptionArray = new Array();
                var rightOptionArray = new Array();
                var allOptions = e.getReturnValue();
                allOptions.forEach(function(item) {
                    if(item.selected){
                        rightOptionArray.push(item);
                    }else{
                        leftOptionArray.push(item);
                    }
                });
                leftOption.set("v.options",leftOptionArray);
                rightOption.set("v.options",rightOptionArray);
            }
        });
        $A.enqueueAction(action);
    }
})