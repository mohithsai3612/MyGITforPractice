({
	displayme : function(component, event, helper) 
    {
		component.set("v.clmn",[
            {label:'FirstName' , fieldName:'FirstName'},
            {label:'LastName' , fieldName:'LastName'},
            {label:'Email' , fieldName:'Email', type:'Email'}
        ]);
        var action =component.get("c.conList");
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