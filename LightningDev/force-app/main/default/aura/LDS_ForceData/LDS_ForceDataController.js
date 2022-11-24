({
	inime : function(component, event, helper) 
    {
		component.find("md").getNewRecord(
                                          "Account",
                                           null,
                                           false,
                                    $A.getCallback(function(){
                                        //alert("Account Intialization Successfully Done");
                                        var toastEvent = $A.get("e.force:showToast");
                                                   toastEvent.setParams({
                                                   "title": "Account intialization!",
                                                   "message": "Intialization Done Successfully",
                                                       type:"info"
                                                    });
                                                   toastEvent.fire();
                                    })
        );
	},
    saveme : function(component, event, helper) 
    {
        component.find("md").saveRecord(function(saveResult){
                                                   //alert("Account Created SuccessFully with AccountID"+saveResult.recordId)
                                                   //alert("State"+saveResult.state)
                                                   //alert("Error"+saveResult.error)
                                                   var toastEvent = $A.get("e.force:showToast");
                                                   toastEvent.setParams({
                                                   "title": "Account Creation!",
                                                   "message": "The record has been updated successfully." +saveResult.recordId,
                                                       type:"SUCCESS"
                                                    });
                                                   toastEvent.fire();
        });	
	}
})