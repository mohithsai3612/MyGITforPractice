({
	callme : function(component, event, helper) 
    {
	 var flg= component.get("v.flag");
        if(flg ==true)
        {
            component.set("v.flag",false);
            $A.createComponent(
            "lightning:button",
            {
                "label":"Hi",
                "variant":"SUCCESS",
                "iconName":"utility:bug",
                "onclick":component.getReference("c.handleme")
            },
            function(newbtn,status,errorMessage)
            {
                if(status == 'SUCCESS')
                {
                    var bd= component.get("v.body");
                    bd.push(newbtn);
                    component.set("v.body",bd);
                }
            }
        );
        }
	},
    handleme : function(component, event, helper)
    {
        alert("Hi,Good morning");
    }
})