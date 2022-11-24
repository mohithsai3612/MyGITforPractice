public class accountname_detach implements Database.Batchable<sObject>
{

    public Database.QueryLocator start(database.BatchableContext Bc)
    {
         string query='select id,name from Account';
        return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext Bc, list<Account> alist)
    {
      for(account a:alist)
        {
           a.name= a.Name.removeStart('Batch apex updated');
        }
        
        update alist;
        system.debug(alist);  
    }
    
    public void finish(database.BatchableContext Bc)
    {
        
    }
    
}