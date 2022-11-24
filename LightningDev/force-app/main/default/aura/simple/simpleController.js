({
	calcme : function(component, event, helper) 
    {
		var n1=parseFloat(component.get("v.num1"));
        var n2=parseFloat(component.get("v.num2"));
        var n3=parseFloat(component.get("v.num3"));
        
        var si=((n1*n2*n3)/100);
        var mat=n1+ si;
        
        component.set("v.sim",si);
      component.set("v.maturity",mat); 
	}
})