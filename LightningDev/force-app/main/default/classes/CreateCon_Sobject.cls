public class CreateCon_Sobject 
{
@AuraEnabled
    public static string CreateCon(Contact CC)
    {
       string result;
        try
        {
          insert CC; 
            result= 'SUCCESS'+CC.Id;
        }
        
        catch(Exception E)
        {
           result= 'Error'+ E.getMessage(); 
        }
        return result;
    }
    
    public static list<Account> srchacc(string searchtext)
    {
        string st='%'+searchtext+'%';
        list<Account> AL=[select Id,Name,Phone,Fax,Industry from Account where Name Like :st];
        return AL;
    }
    
}