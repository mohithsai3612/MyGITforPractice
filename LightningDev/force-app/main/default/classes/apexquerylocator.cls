public class apexquerylocator implements database.Batchable<sobject>
{
 public database.QueryLocator start(database.BatchableContext BC)
 {
     return database.getQueryLocator('select id,name from Account');
 }
    public void execute(database.BatchableContext BC, list<Account> sublist)
    {
        
    }
    public void finish(database.BatchableContext bc)
    {
        
    }
}