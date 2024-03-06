({
    loadOptions: function (component, event, helper) {
        var opts = [
            { value: "Prospecting", label: "Prospecting" },
            { value: "Qualification", label: "Qualification" },
            { value: "Needs_Analysis", label: "Needs Analysis" },
            { value: "Value_Proposition", label: "Value Proposition" },
            { value: "Id_Decision_Makers", label: "Id. Decision Makers" },
            { value: "Perception_Analysis", label: "Perception Analysis" },
            { value: "Proposal_Price_Quote", label: "Proposal/Price Quote" },
            { value: "Negotiation_Review", label: "Negotiation/Review" },
            { value: "Closed_Won", label: "Closed Won" },
            { value: "Closed_Lost", label: "Closed Lost" }           
            
         ];
         component.set("v.options", opts);
    },
    updateSelect: function(component, event, helper){
    var opts = [
        { value: "Cyan", label: "Cyan" }, 
        { value: "Yellow", label: "Yellow" }, 
        { value: "Magenta", label: "Magenta", selected: true }];
    component.set('v.options', opts);
    //set the new selected value on the component
    component.set('v.selectedValue', 'Magenta'); 
    //return the selected value
    component.find("mySelect").get("v.value");
}
})