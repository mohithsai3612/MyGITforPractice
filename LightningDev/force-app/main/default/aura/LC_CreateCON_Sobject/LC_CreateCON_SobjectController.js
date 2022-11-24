({
	Callme : function(component, event, helper)
    {
	 var cnc= component.get("v.conc");
        var action = component.get("CreateCon");
        
        action.setParams({"conc":cnc});
        
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state=='SUCCESS')
            {
                var rs= response.getReturnValue();
                alert(rs);
            }
        });
        $A.enqueueAction(action);
        
	},
    
    clickme : function(component, event, helper)
    {
        var st= component.get("v.st");
        var action = component.get("srchacc");
        
        action.setParams({"st":st});
        action.setCallback(this,function(response)
            {
            var state= response.getState();
            if(state=='SUCCESS') 
            {
                var res=response.getReturnValue();
                component.set("v.Accon",res);
            }
                           });
        $A.enqueueAction(action);
    }
    
    
    
})