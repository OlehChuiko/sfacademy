({
	doInit : function(component, event, helper) {
		var a = '<script> alert("HERE")</script>';
        component.set('v.foo',a);
	}
})