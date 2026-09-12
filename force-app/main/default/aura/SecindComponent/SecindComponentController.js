({
	myAction : function(component, event, helper) {
		console.log('Welcome to JS file');
        //alert('first alert!');
        //component.set(); -> send data in aura comp from js file
        //component.get(); -> get the data from aura comp file to js file
        component.set("v.stdName","Shilpi");
        component.set("v.stdPhone","23456789");
        component.set("v.stdEmail","shilpi@gmail.com");
	}
})