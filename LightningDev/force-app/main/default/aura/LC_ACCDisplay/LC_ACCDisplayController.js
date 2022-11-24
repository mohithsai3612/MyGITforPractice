({
	displayme : function(component, event, helper) 
    {
	    var en= event.getParam("accname");
        var ep= event.getParam("accPhone");
        var ef= event.getParam("accFax");
        var er= event.getParam("accRating");
        var ei= event.getParam("accIndustry");
        
        component.set("v.daccname",en);
        component.set("v.daccPhone",ep);
        component.set("v.daccFax",ef);
        component.set("v.daccRating",er);
        component.set("v.daccIndustry",ei);
        
	}
})