({
	calme : function(component, event, helper) 
    {
		var n1= parseInt(component.get("v.num1"));
        var n2= parseInt(component.get("v.num2"));
        
        var rest=n1*n2;
        if(rest>100)
        {
            component.set("v.flag",true);
            component.set("v.result",rest);
        }
	},
    
    clearme : function(component, event, helper)
    {
      
            component.set("v.flag",false);
            component.set("v.num1",null);
        component.set("v.num2",null);
        component.set("v.result",null);
    }
})