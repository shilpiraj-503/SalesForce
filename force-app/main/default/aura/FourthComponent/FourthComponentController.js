({
	sumValue : function(component, event, helper) {
		var av=component.get("v.Avalue");
        var bv=component.get("v.Bvalue");
        var cv=parseInt(av)+parseInt(bv);
        component.set("v.Sum",cv);
        component.set("v.isDispsum",true);
	},
    subValue : function(component, event, helper) {
		var av=component.get("v.Avalue");
        var bv=component.get("v.Bvalue");
        var cv=parseInt(av)-parseInt(bv);
        component.set("v.Sub",cv);
        component.set("v.isDispsub",true);
	},
 mulValue : function(component, event, helper) {
		var av=component.get("v.Avalue");
        var bv=component.get("v.Bvalue");
        var cv=parseInt(av)*parseInt(bv);
     component.set("v.Mul",cv);
        component.set("v.isDispmul",true);
	},
divValue : function(component, event, helper) {
		var av=component.get("v.Avalue");
        var bv=component.get("v.Bvalue");
        var cv=parseInt(av)/parseInt(bv);
   		 component.set("v.Div",cv);
        component.set("v.isDispdiv",true);
	}
})