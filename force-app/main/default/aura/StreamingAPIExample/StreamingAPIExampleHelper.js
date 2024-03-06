({
	bootstrapCometD : function(component, event) {
		var action = component.get("c.retrieveSessionId");
        
        action.setCallback(this, function(response){
            var state = response.getState();

            if(state === "SUCCESS") {
                console.log(response.getReturnValue());
                component.set("v.sessionId", response.getReturnValue());
                // Connect to the CometD endpoint
		        $.cometd.init({
		           url: '/cometd/43.0',
		           requestHeaders: { Authorization: component.get("v.sessionId")}
		       });

		       // Subscribe to a topic. JSON-encoded update will be returned
		       // in the callback
                $.cometd.subscribe('/topic/CaseUpdates', function(message) {
                    console.log('message');
                    console.log(message);
                    var newCase = {};
                    newCase.event = message.data.event.type;
                    newCase.subject = message.data.sobject.Subject;
                    newCase.status = message.data.sobject.Status;
                    newCase.id = message.data.sobject.Id;
                    newCase.caseNumber = message.data.sobject.CaseNumber;
                    newCase.modifiedDate = message.data.sobject.LastModifiedDate;

                    var listhere = component.get('v.objList');
                    listhere.push(newCase);
                    component.set('v.objList', listhere);

		        });
            }
        });
        $A.enqueueAction(action);
	}
	//SELECT Id, Name, NotifyForOperationCreate, NotifyForOperationUpdate, NotifyForOperationDelete, Query FROM Pushtopic
})