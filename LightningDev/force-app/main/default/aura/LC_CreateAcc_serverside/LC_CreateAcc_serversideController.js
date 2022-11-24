({
	calme : function(component, event, helper) 
    {
		var cnm= component.get("v.cname");
        var cph = component.get("v.cphone");
        var cfx= component.get("v.cfax");
        var cindustry= component.get("v.cindustry");
        var crat= component.get("v.crating");
        
        var action = component.get("c.Creatacc")
        
        action.setParams({"NM":cnm,"FX":cfax,"PH":cphone,"Indt":cindustry,"Rat":crating});
        
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state == 'SUCCESS')
            {
                var r =response.getReturnValue();
                alert('Account Created Successfully '+r)
                component.set("v.cid",r)
            }
        });
        
        $A.enqueueAction(action);
	},
    clearme : function(component, event, helper) 
    {
		
	}
})