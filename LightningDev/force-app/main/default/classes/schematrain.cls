public class schematrain {
    public map<string,object> resmap  {set;get;}
    public schematrain(){
        Schema.DescribeSObjectResult result=Patient__c.SobjectType.getDescribe();
        resmap=new map<string,object>();
        resmap.put('label',result.getLabel());
        resmap.put('Name',result.getName());
        resmap.put('Create', result.isCreateable());
        resmap.put('custom', result.isCustom());
        resmap.put('Accessible',result.isAccessible());
        resmap.put('code', result.getKeyPrefix());
        
    }
}