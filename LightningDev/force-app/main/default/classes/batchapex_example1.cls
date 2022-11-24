public class batchapex_example1 implements database.Batchable<sobject>
{
public database.QueryLocator start(database.BatchableContext bc)
{
    return database.getQueryLocator('select id,name from Account');
}
    public void execute(database.BatchableContext bc, list<Account> sublistfromstartmethod)
    {
        for(Account EA:sublistfromstartmethod)
        {
            EA.Name='Batch apex updated '+EA.Name;
        }
        update sublistfromstartmethod;
    }
    public void finish(database.BatchableContext bc)
    {
        
    }
}