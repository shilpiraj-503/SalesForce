({
	accountFetching : function(component, event, helper) {
		console.log('hi');
        var action=component.get("c.FetchAllAccountRecords");
        action.setCallback(this,function(response){
         var statejs=response.getState();
        if(statejs=='SUCCESS'){
            var listres=response.getReturnValue();
            console.log(listres);
            console.log(JSON.stringify(listres));
            component.set("{!v.AccList}",JSON.stringify(listres));
            component.set("{!v.AccList1}",listres);
        }
        else
             alert('error');
                  });
     $A.enqueueAction(action);
        
	}
})