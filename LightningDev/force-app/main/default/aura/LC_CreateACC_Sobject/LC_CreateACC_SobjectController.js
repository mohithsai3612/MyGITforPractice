({
	callme : function(component, event, helper) 
    {
	var accc=component.get("v.ACC");
        
        var action=component.get("c.createACC");
        action.setParams({"Ac":accc});
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state == 'SUCCESS')
            {
                var rs =response.getReturnValue();
                alert(rs);
            }
        });
        $A.enqueueAction(action);                   
	}
})