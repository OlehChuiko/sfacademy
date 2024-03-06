({
    submitForm : function(component, event, helper) {
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
             //var newItem = component.get("v.newItem");
             //console.log("Create item: " + JSON.stringify(newItem));
             // var newItems = component.get("v.items");
              //newItems.push(JSON.parse(JSON.stringify(newItem)));
           //component.set("v.items", newItems);
           helper.createItem(component);
             
         }
    }
})