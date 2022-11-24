({
	callme : function(component, event, helper) 
    {
	  var params= event.getParam("arguments");
        
        var name= params.mempname;
        var phn= params.mempphone;
        var dob= params.mempdob;
        
        component.set("v.cempname",name);
        component.set("v.cempphone",phn);
        component.set("v.cempdob",dob);
	}
})