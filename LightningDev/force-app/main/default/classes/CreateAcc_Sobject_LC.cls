public class CreateAcc_Sobject_LC 
{
@AuraEnabled
    public static string createACC( Account Ac)
    {
        string Result;
        try
        {
          insert Ac;
            Result='Success'+ Ac.Id;
           
        }
        catch(Exception E)
        {
          Result='Error'+E.getMessage();  
        }
        
        return Result;
    }
}