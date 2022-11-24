({
	display : function(component, event, helper) 
    {
        component.set("v.col",[
            {label:'Opportunity Name' , fieldName:'Name'},
            {label:'Stage Name' , fieldName:'StageName'},
            {label:'Amount' , fieldName:'Amount', type:'currency'}
        ]);
	var action = component.get("c.Opplist");
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