({
	Calme : function(component, event, helper) 
    {
	    var am=parseFloat(component.find("amt").get("v.value"));
        var tr=parseFloat(component.find("ter").get("v.value"));
        var inte=parseFloat(component.find("inter").get("v.value"));
        
        var chldcmp= component.find("chld");
        chldcmp.simpleInterest(am,tr,inte);
	}
})