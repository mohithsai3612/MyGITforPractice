({
	nextme : function(component, event, helper) 
    {
	$A.createComponents(
        [
            [
                "lightning:input",
                {
                    "label":"Employee Name",
                    "aura:id":"inp1",
                    "type":"text"
                }
            ],
            [
                "lightning:input",
                {
                "label":"Employee DOB",
                "aura:id":"inp2",
                "type":"date"
                }
            ],
            [
                "lightning:input",
                {
                "label":"Employee Fav Color",
                "aura:id":"inp3",
                "type":"color"
                }
            ],
            [
                "lightning:button",
                {
                "label":"Submit",
                "aura:id":"bt1",
                "variant":"SUCCESS",
                "iconName":"utility:bug",
                "onclick":component.getReference("c.subme")
                }
            ]
        ],
        function(mycomps, status, errorMessage)
        {
         if(status == 'SUCCESS')
         {
             var bd = component.get("v.body");
             mycomps.forEach(function(item){
                 bd.push(item);
             });
             component.set("v.body",bd);
         }
        }
    );	
	},
    subme:function(component, event, helper) 
    {
        var nm = component.find("inp1").get("v.value");
        var db = component.find("inp2").get("v.value");
        var cl = component.find("inp3").get("v.value");
        alert('thanks for using Service'+nm +db +cl);
         comp.destroy();
    
    }
    /*clearme:function(component, event, helper) 
    {
        var nm = component.find("inp1");
        nm.destroy();
        var db = component.find("inp2");
        db.destroy();
        var cl = component.find("inp3");
        cl.destroy();
        var bt = component.find("bt1");
        bt.destroy();
        
        
    }*/
})