({
	createContact : function(component, event, helper) {
		console.log('HI JS');
        
        var con=component.get("v.con");
        var action=component.get("c.insertContact");//calling apex class function
        console.log(con);
        action.setParams({
            con:con
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