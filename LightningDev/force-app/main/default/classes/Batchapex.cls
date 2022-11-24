public class Batchapex implements database.Batchable<sobject>
{
    public list<patient__c> start(database.BatchableContext BA)
    {
        list<patient__c> PL=[select id from patient__c];
        return PL;
    }
    public void execute(database.BatchableContext BA, list<patient__c> PLB)
    {
        database.delete(PLB,false);
    }
public void finish(database.BatchableContext BA)
{
    
}
}