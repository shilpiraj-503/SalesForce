({
	myAction : function(component, event, helper) {
        var empsal=component.get("{!v.empSalary}");
        var empexp=component.get("{!v.empExperience}");
        var empname=component.get("{!v.empName}");
        
        //we if logic has to be written in js this works fine 
        /*if(parseInt(empexp)>=5){
            bonus=parseInt(empsal)*0.3;
        }
        else
        {
            bonus=parseInt(empsal)*0.2;
        }
        component.set("v.empBonus",bonus);
        */
        
        //step 1:: calling apex class
		var action=component.get("c.getBonusMethod");
        action.setParams({
            //step 2:: send data to apex
            exp: empexp,
            sal: empsal
        });
        action.setCallback(this,function(response){
            var statejs=response.getState();
            if(statejs=='SUCCESS'){
               var bonus=response.getReturnValue();
            	console.log(bonus);
                component.set("v.empBonus",bonus);
               }
            else
                alert('error');
        });
        $A.enqueueAction(action);
	}
     
})