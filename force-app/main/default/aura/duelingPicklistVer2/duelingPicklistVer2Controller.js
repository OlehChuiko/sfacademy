({
/*
    doInit: function(component, event,helper)
    {
        var action = component.get("c.getAllOpportunitySyncStages");
        action.setCallback(this, function(e){
            if(e.getState()==='SUCCESS')
            {
                
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
    },*/
    moveLeft:function(component,event,helper)
    {
        
        var leftComp = component.find('leftOptions');
        var rightComp = component.find('rightOptions');
        var rightOptions = rightComp.get('v.options');
        var rightValue = rightComp.get('v.value');
        if(!rightValue)return;
        var leftOptions = leftComp.get('v.options');
        if(!leftOptions)
            leftOptions=[];        
        
        var values = rightValue.split(';');
        for(var i=0;i<values.length;i++)
        {
            for(var j=0;j<rightOptions.length;j++)
            {
                if(values[i]===rightOptions[j].value)
                {
                    leftOptions.push({ 'disabled':rightOptions[j].disabled,
                                       'label':rightOptions[j].label,
                                       'selected':false,
                                       'value':rightOptions[j].value});
                    rightOptions.splice(j,1);
                    break;
                }
            }
        } 
        rightComp.set('v.options',rightOptions);
        if(leftOptions.length>0)
        {
            leftComp.set('v.options',leftOptions);
        }
        
    },
    moveRight:function(component,event, helper)
    {
        
        var leftComp = component.find('leftOptions');
        var rightComp = component.find('rightOptions');
        var leftOptions = leftComp.get('v.options');
        var leftValue = leftComp.get('v.value');
        if(!leftValue)
            return;
        var rightOptions = rightComp.get('v.options');
        if(!rightOptions)
            rightOptions = [];
       	if(leftValue!='undefined'&& leftValue!='')
        {
            var values = leftValue.split(';');
			for(var i=0;i<values.length;i++)
            {
                for(var j=0;j<leftOptions.length;j++)
                {
                    if(values[i]===leftOptions[j].value)
                    {
                        rightOptions.push({'disabled':leftOptions[j].disabled,
                                           'label':leftOptions[j].label,
                                           'selected':true,
                                           'value':leftOptions[j].value});
                        leftOptions.splice(j,1);
                        break;
                    }
                }
            } 
            leftComp.set('v.options',leftOptions);
        }
        if(rightOptions.length>0)
        {
            rightComp.set('v.options',rightOptions);
        }
        
        console.log('left Comp'+leftComp.get('v.options'));
        console.log('right Comp'+rightComp.get('v.options'));
        
    },
    save:function(component, event, helper)
    {
        var rightComp = component.find("rightOptions");
        var rightOptions = rightComp.get('v.options');
        
        
        var stagesIds = [];
        rightOptions.forEach(function(item) {
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
	showModal : function(component, event, helper) {
        
        helper.showPopupHelper(component, 'searchModal', 'slds-fade-in-');
        helper.showPopupHelper(component,'backdrop','slds-backdrop--');
        helper.loadStages(component, event, helper);
	},
    closeModal:function(component, event, helper)
    {
        helper.hidePopupHelper(component, 'searchModal', 'slds-fade-in-');
        helper.hidePopupHelper(component,'backdrop','slds-backdrop--'); 
    }
})