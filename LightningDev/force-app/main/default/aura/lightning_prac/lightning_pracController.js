({
	calme : function(component, event, helper)
    {
        var n1=parseInt(component.find("in1").get("v.value"));
        var n2=parseInt(component.find("in2").get("v.value"));
        var res=n1*n2;
        
        if(res>0)
        {
            component.set("v.flag",true);
            component.find("rest").set("v.value",res);
            
        }
    },
    clearme : function(component, event, helper)
    {
        component.set("v.flag",false);
        
    }
  
    
})