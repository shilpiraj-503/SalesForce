({
	contactFetching: function(component, event, helper) {
		console.log('hi folks');
        var action=component.get("c.FetchAllContactRecords");
        action.setCallback(this,function(response){
         var statejs=response.getState();
        if(statejs=='SUCCESS'){
            var listres=response.getReturnValue();
            console.log(listres);
            console.log(JSON.stringify(listres));
            
            component.set("{!v.ConList1}",listres);
        }
        else
             alert('error');
                  });
     $A.enqueueAction(action);
        
	},
    searchFetching: function(component, event, helper) {
		console.log('hi folks');
        var con=component.get("{!v.Con}")
        var action=component.get("c.FetchSearchContactRecords");
         action.setParams({
            //step 2:: send data to apex
             name: con
        });
        action.setCallback(this,function(response){
         var statejs=response.getState();
        if(statejs=='SUCCESS'){
            var listres=response.getReturnValue();
            console.log(listres);
            console.log(JSON.stringify(listres));
            
            component.set("{!v.ConList1}",listres);
        }
        else
             alert('error');
                  });
     $A.enqueueAction(action);
        
	}
})