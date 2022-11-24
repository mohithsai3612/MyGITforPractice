public class queuetrigger implements Queueable
{
    private list<Account> acclistinsidetrigger;
    public queuetrigger(list<Account> acclistfromtrigger){
        this.acclistinsidetrigger= acclistfromtrigger;
    }
    public void execute(QueueableContext qcntx)
    {
       list<contact> conlisttocreate=new list<Contact>();
        for(Account acc:acclistinsidetrigger){
            Contact con=new Contact();
            con.LastName=acc.Name;
            con.AccountId=acc.Id;
            conlisttocreate.add(con);
        }
        if(conlisttocreate.size()>0)
            Insert conlisttocreate;
    }
}