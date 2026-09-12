({
	checkBoxData : function(component, event, helper) {
		var idnew=event.getParam("CkeckboxId");
        var check=component.get("v.isDisp");
        //alert(idnew);
        console.log(idnew);
         
        var action=component.get('c.contactList');
        action.setParams({
            idcon :  idnew
        });
             action.setCallback(this,function(response){
        
            var state=response.getState();
            if(state=="SUCCESS"){
                var accCon=response.getReturnValue();
                console.log(JSON.stringify(accCon));
                component.set('v.contactrecords',accCon);
               
            }
            else
                alert("Congratulation Msg");
        });
        
		$A.enqueueAction(action);
	}
})