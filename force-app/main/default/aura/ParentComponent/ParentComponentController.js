({
	nameset : function(component, event, helper) {
		//var name="ecolab";
        //component.set('v.name2',name);
        var nm=event.getParam('nameEvent');
                var ph=event.getParam('phoneEvent');
       component.set("v.name2",nm);
         component.set("v.phone2",ph);
        alert(nm);
	}
})