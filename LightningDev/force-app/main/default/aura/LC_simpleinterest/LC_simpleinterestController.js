({
	calcme : function(component, event, helper) 
    {
		var n1=parseFloat(component.find("in1").get("v.value"));
        var n2=parseFloat(component.find("in2").get("v.value"));
        var n3=parseFloat(component.find("in3").get("v.value"));
        
        var si=((n1*n2*n3)/100);
        var mat=n1+si;
        
        component.find("rest").set("v.value",si);
        component.find("mut").set("v.value",mat);
	}
})