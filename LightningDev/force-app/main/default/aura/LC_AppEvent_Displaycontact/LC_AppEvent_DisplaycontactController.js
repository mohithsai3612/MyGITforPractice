({
	display : function(component, event, helper) 
    {
        component.set("v.col",[
            {label:'FirstName' , fieldName:'FirstName'},
            {label:'LastName' , fieldName:'LastName'},
            {label:'Email' , fieldName:'Email', type:'email'}
        ]);
	var action = component.get("c.conList");
        var eid = event.getParam("eaccId");
        action.setParams({"accId":eid});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state=='SUCCESS')
            {
                var res= response.getReturnValue();
                component.set("v.data",res);
            }
        });
        $A.enqueueAction(action)
    
    }
})