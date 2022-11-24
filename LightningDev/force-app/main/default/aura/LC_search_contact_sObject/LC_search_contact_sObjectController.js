({
	searchme : function(component, event, helper) 
    {
	var st= component.get("v.st");	
       var action = component.get("c.searchcon");
        action.setParams({"searchtx":st});
        
        action.setCallback(this,function(response){
        var state = response.getState();
        if(state == 'SUCCESS')
        {
            var res= response.getReturnValue();
            component.set("v.scon",res);
        }
        });
        $A.enqueueAction(action);
	},
    
    creme : function(component, event, helper)
    {
        var colm=[
            {label:"Account Name", fieldName:"Name", type:"text"},
            {label:"Account Phone", fieldName:"Phone", type:"Phone"},
            {label:"Account Fax", fieldName:"Fax", type:"Phone"}
             ]; 
           component.set("v.clms",colm);  
    }
})