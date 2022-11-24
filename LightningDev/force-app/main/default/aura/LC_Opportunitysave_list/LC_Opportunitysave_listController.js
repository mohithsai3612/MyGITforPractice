({
	callme : function(component, event, helper) 
    {
	var accc=component.get("v.OPP");
        
        var action=component.get("c.createOpp");
        action.setParams({"Op":accc});
        action.setCallback(this,function(response){
            var state= response.getState();
            if(state == 'SUCCESS')
            {
                var rs =response.getReturnValue();
                alert(rs);
            }
        });
        $A.enqueueAction(action);                   
	},
    callme : function(component, event, helper)
     {
	var Opps= component.get("v.Opps");	
       var action = component.get("c.Searchopp");
        action.setParams({"Searchoppor":Opps});
        
        action.setCallback(this,function(response){
        var state = response.getState();
        if(state == 'SUCCESS')
        {
            var res= response.getReturnValue();
            component.set("v.OPPO",res);
        }
        });
        $A.enqueueAction(action);
	},
    
    creme : function(component, event, helper)
    {
        var colm=[
            {label:"Opportunity Name", fieldName:"Name", type:"text"},
            {label:"Opportunity CloseDate", fieldName:"CloseDate", type:"Date"},
            {label:"Opportunity StageName", fieldName:"StageName", type:"text"}
             ]; 
           component.set("v.clms",colm);  
    }
})