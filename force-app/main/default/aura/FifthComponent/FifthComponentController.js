({
	myAction : function(component, event, helper) {
		console.log('Inside Function');
        //step 1:: call the apex class method
        var action=component.get("c.getName");
        //step 2:: return value.
        action.setCallback(this,function(response){
              var statejs=response.getState();//SUCCESS ERROR RUNNING 
            if(statejs=="SUCCESS"){
                var namejs=response.getReturnValue();
                console.log('Employee Name : '+namejs);
                component.set("v.Name",namejs);
            }
         });
        //step 3
        $A.enqueueAction(action);
        
	}
})