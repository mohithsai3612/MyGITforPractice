public class eventSave_ACC 
{
@AuraEnabled
    public static string CreateAccbyEvent(string nm, string ph, string fx, string rat,string ind)
    {
        string result;
        try
        {
          Account A= new Account();
            A.Name=nm;
            A.Phone=ph;
            A.Fax=fx;
            A.Rating=rat;
            A.Industry=ind;
            insert A;
            result= ''+A.Id;
        }
        catch(Exception E)
        {
           result=E.getMessage(); 
        }
        return result;
    }
}