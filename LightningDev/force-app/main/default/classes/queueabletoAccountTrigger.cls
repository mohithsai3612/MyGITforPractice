public class queueabletoAccountTrigger implements Queueable
{
    private list<Account> acclistTocreatecontact;
    
    public queueabletoAccountTrigger(list<Account> expectingAccountsfromtrigger)
    {
     this.acclistTocreatecontact= expectingAccountsfromtrigger;  
    }
    
    public void execute(QueueableContext qc){
        list<Contact> conlistToInsert= new List<Contact>();
        
        for(Account acc:acclistTocreatecontact){
            Contact con=new Contact();
            con.lastName=acc.Name;
            con.AccountId=acc.Id;
            conlistToInsert.add(con);
        }
        if(conlistToInsert.size()>0)
        Insert conlistToInsert;
    }
}