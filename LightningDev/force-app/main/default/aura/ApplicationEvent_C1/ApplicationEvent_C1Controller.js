({
	searchme : function(component, event, helper) 
    {
	var nm= component.get("v.caccName");
        var ind= component.get("v.caccInd");
        
        var action=component.get("c.SearchAcc");
        action.setParams({"accName":nm,"accInd":ind});
        action.setCallback(this,function(response){
                           var state = response.getState();
                            if (state=='SUCCESS')
                            {
                                var result = response.getReturnvalue();
                                if(result !='NoData')
                                {
                                    var evt=$A.get("e.c:ApplicationEvent");
                                    evt.setParams({"eaccId":result});
                                    evt.fire();
                                }
                                
                            }
                           });
        $A.enqueueAction(action);
        
	}
})