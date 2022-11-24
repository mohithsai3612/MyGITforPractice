({
	Dellme : function(component, event, helper) 
    {
        component.find("rcdel").deleteRecord($A.getCallback(function(DeleteResult){
            var nav = cmp.find("navService");
            
            var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'home'
            }
        };
        nav.navigate(pageReference);
        }));
	}
})