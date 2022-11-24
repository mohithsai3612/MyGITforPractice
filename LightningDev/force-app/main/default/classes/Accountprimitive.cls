public class Accountprimitive 
{
    @AuraEnabled
    public static string Creatacc(string NM,string PH, string FX,string Rat,string Indt)
    {
        string Result;
        try
        {
           Account A=new Account();
            A.Name=NM;
            A.Fax=FX;
            A.Phone=PH;
            A.Industry=Indt;
            A.Rating=Rat;
            insert A;
            Result=''+A.Id;
            
        }
        catch(Exception E)
        {
          Result=E.getMessage();  
        }
        return Result;
    }
}