({
	Fullname : function(component, event, helper) {
		//alert('An inside function');
             console.log('alert!');
        
        var fnamejs=component.get("v.fname");
        var lnamejs=component.get("v.lname");
        
        var finalname=fnamejs+' '+lnamejs;
        component.set("v.fullname",finalname);
        component.set("v.isDispF","true");
	}
})