({
	createAccount : function(component, event, helper) {
		console.log('HI JS');
        
        var acc=component.get("v.acc");
        var action=component.get("c.insertAccount");//calling apex class function
        console.log(acc);
        action.setParams({
            acc:acc
        }); //setting parameter values
        action.setCallback(this,function(response){
         var statejs=response.getState(); // getting the status of the process that we did in apex
        if(statejs=='SUCCESS'){ //if it is success
            var idReturned=response.getReturnValue();//fetch id 
            console.log('ID= '+idReturned);
            window.open('/'+idReturned);//to redirect to the required page
        }
        else
             alert('error');//else error
                  });
     $A.enqueueAction(action);//add the action
	}
})