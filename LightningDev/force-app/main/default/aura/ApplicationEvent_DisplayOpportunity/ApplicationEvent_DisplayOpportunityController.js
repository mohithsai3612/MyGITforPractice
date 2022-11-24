({
	displayme : function(component, event, helper) 
    {
		var colm=[
            {label:'Name', fieldName:'Name'},
            {label:'StageName', fieldName:'StageName'},
            {label:'Amount' , fieldName:'Amount'}
        ];
        component.set("v.clmn",colm);
        var action =component.get("c.oppList");
        var eid=event.getParam("eaccId");
        action.setParams({"accId":eid});
        action.setCallback(this,function(response){
                          var state = reponse.getState();
                          if (state=='SUCCESS')
                          {
                          var result = response.getReturnValue();
                          component.set("v.data",result);
                         }
                         });
                          $A.enqueueAction(action);
	}
})