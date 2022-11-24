({
	subme : function(component, event, helper) 
    {
		var nm = component.get("v.pempname");
        var ph = component.get("v.pempphne");
        var db = component.get("v.pempdob");
        
        var chldcmp= component.find("chld");
        chldcmp.Methodabc(nm,ph,db);
        
	}
})