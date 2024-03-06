({
    doInit: function(component, event, helper) {
    // Create the action
    var action = component.get("c.getItems");
    // Add callback behavior for when response is received
    action.setCallback(this, function(response) {
        var state = response.getState();
        if (component.isValid() && state === "SUCCESS") {
            component.set("v.items", response.getReturnValue());
        }
        else {
         console.log("Failed with state: " + state);
       }
    });

    $A.enqueueAction(action);
},
    handleAddItem: function(component, event, helper) {
        var item = event.getParam("item");
        var action = component.get("c.saveItem");
        action.setParams({
            "campingItem": item
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {       
             var items = component.get("v.items");
            items.push(response.getReturnValue());
            component.set("v.items", items);
            }
        });
        $A.enqueueAction(action);
    },

    clickCreateItem : function(component, event, helper) {
         var validCamping = true;
        // Name must not be blank
        var nameField = component.find("name");
        var name = nameField.get("v.value");
        var quantityField = component.find("quantity");
        var quantity = nameField.get("v.value");
         var priceField = component.find("price");
        var price = nameField.get("v.value");
         if ($A.util.isEmpty(name)){
            validCamping = false;
            nameField.set("v.errors", [{message:"Camping name can't be blank."}]);
        }
        else {
            nameField.set("v.errors", null);
        }
        
         if ($A.util.isEmpty(quantity)){
            validCamping = false;
            quantityField.set("v.errors", [{message:"Camping quantity can't be blank."}]);
        }
        else {
            quantityField.set("v.errors", null);
        }
        if ($A.util.isEmpty(price)){
            validCamping = false;
            priceField.set("v.errors", [{message:"Camping price can't be blank."}]);
        }
        else {
            priceField.set("v.errors", null);
        }
        
         if(validCamping){
             var newItem = component.get("v.newItem");
             console.log("Create item: " + JSON.stringify(newItem));
             // var newItems = component.get("v.items");
              //newItems.push(JSON.parse(JSON.stringify(newItem)));
           //component.set("v.items", newItems);
           helper.createItem(component, newItem);

           component.set("v.newItem",{ 'sobjectType': 'Camping_Item__c','Name': '','Quantity__c': 0,
                    'Price__c': 0,'Packed__c': false });


       }
    }
})