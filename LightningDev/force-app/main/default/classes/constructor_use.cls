public class constructor_use 
{
    public account A {get;set;}
    public string Msg{get;set;}
    
    public constructor_use()
    {
        A= new Account();
        Msg='welcome to salesforce';
    }
    public void ABC()
    {
        try{
            insert A;
            Msg='Account is created Succefully ';
        }
        catch(Exception E)
        {
            Msg='Account Creation failed with following Error '+E.getMessage();
        }
    }
}