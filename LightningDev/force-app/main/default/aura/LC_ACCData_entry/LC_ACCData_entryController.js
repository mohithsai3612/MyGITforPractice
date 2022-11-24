({
	callme : function(component, event, helper) 
    {
		var cn= component.get("v.caccname");
        var cp= component.get("v.caccPhone");
        var cf= component.get("v.caccFax");
        var cr= component.get("v.caccRating");
        var ci= component.get("v.caccIndustry");
        
        var evt= component.getEvent("firsty");
        evt.setParams({"accname":cn,"accPhone":cp,"accFax":cf,"accRating":cr,"accIndustry":ci});
        evt.fire();
        component.set("v.flag",true);
        alert('You are about to save the Details, Please Check Carefully')
        
	},
    saveme : function(component, event, helper) 
    {
	    var cnm = component.get("v.caccname");
        var cph = component.get("v.caccPhone");
        var cfx = component.get("v.caccFax");
        var crat = component.get("v.caccRating");
        var cind = component.get("v.caccIndustry");
        
        var action=component.get("c.CreateAccbyEvent");
        action.setParams({"nm":cnm,"ph":cph,"fx":cfx,"rat":crat,"ind":cind});
        
        action.setCallback(this,function(response){
           var state =  response.getState();
            if(state == 'SUCCESS')
            {
                var r =response.getReturnValue();
                alert('Account created Successfully'+r);
            }
        });
        
        $A.enqueueAction(action);
        
	}
})