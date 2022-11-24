({
	callme : function(component, event, helper) 
    {
	 var params= event.getParam("arguments");
        
        var amt =params.mamount;
        var term= params.mterm;
        var inte= params.minterest;
        var si=((amt*term*inte)/100);
        var mt=amt+si;
        
        
        component.set("v.camount",amt);
        component.set("v.cterm",term);
        component.set("v.cinterest",inte);
        component.find("rst").set("v.value",si);
        component.find("mat").set("v.value",mt);
        
	}
})