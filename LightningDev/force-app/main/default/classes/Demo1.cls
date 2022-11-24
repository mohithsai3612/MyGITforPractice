public class Demo1 
{
    public string helloworld;                      //instance variable
    private static final string Default_SENT;      // static variable
    
    static {
        Default_SENT='hi salesforce';              // static block
           }
    
    public Demo1(){   
        this(Default_SENT);                        //constructor
    }
    
    public Demo1(string DISPLAYTYPE)              //overloaded constructor
    {
        this.helloworld=DISPLAYTYPE;
    }
    public void output(){
        system.debug('display text '+ helloworld);     //method
    }
    
    public static void STATICoutput(){
        system.debug('display text static '+Default_SENT);   //staticmethod
    }
    
    public static void soqlforeach(){
        list<Account> acclist=[select Id,Name,(select Id,Name from Opportunities) from Account where Name='United Oil & Gas Corp.'];
        for(Account ac:acclist){
            system.debug('Account- ' + ac.Name);
            for(Opportunity oppslist:ac.Opportunities){
               system.debug('Opportunities- '+oppslist.Name); 
            }
        }
    }
}