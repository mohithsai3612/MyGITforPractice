public class search_oppurchunity_LC 
{
@AuraEnabled
    public static string createOpp( Opportunity Op)
    {
        string Result;
        try
        {
          insert Op;
            Result='Success'+ Op.Id;
           
        }
        catch(Exception E)
        {
          Result='Error'+E.getMessage();  
        }
        
        return Result;
    }
    public static list<Opportunity> Searchopp(string Searchoppor)
    {
        string Opps='%'+Searchoppor+'%';
        List <Opportunity> Ol=[select id,Name,CloseDate,StageName from Opportunity where Name Like :Opps];
        return Ol;
    }
}