({
	createOpportunity : function(component, event, helper) {
		
        var opp=component.get('v.opp');
        console.log(opp);
        var action=component.get('c.insertOpportunity');
        action.setParams({
            oppList: opp
        });
        action.setCallback(this,function(response){
            var statusjs=response.getState();
            console.log(statusjs);
            if(statusjs=='SUCCESS'){
                var idOpp=response.getReturnValue();
                console.log('Id= '+idOpp);
                window.open('/'+idOpp);
            }
            else
            {
                alert('error');
            }
        });
        $A.enqueueAction(action);
        
	}
})