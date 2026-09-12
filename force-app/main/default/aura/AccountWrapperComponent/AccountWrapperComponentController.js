({
	loadFunction : function(component, event, helper) {
        
        var action=component.get('c.accountvalues');
        
        action.setCallback(this,function(response){
        
            var state=response.getState();
            if(state=="SUCCESS"){
                var accCon=response.getReturnValue();
                console.log(JSON.stringify(accCon));
                component.set('v.records',accCon);
            }
            else
                alert("Congratulation Msg");
        });
        
		$A.enqueueAction(action);
	},
    IdFunction : function(component, event, helper) {
    	var idjs=event.getSource().get("v.value");
        alert(idjs);
        window.open('/'+idjs);
    },
    checkBoxCheck : function(component, event, helper) {
    	var idjs=event.getSource().get("v.name");
       // alert(idjs);
       var eventChild=component.getEvent('checkEvent');
        eventChild.setParams({
            CkeckboxId:idjs
        });
        eventChild.fire();
    }
})