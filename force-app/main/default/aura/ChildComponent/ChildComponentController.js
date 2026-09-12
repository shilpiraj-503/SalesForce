({
	nameInputChild: function(component, event, helper) {
		var name=component.get('v.Name');
        var phone=component.get('v.Phone');
       // alert(name);
        console.log(name);
       var evtjs= component.getEvent("firstevent");
        evtjs.setParams({
            //event attribute Name :: js var name
            nameEvent: name ,
            phoneEvent: phone
        });
        evtjs.fire();
	}
})