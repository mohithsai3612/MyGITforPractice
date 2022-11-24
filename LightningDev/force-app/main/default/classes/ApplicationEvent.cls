public class ApplicationEvent 
{
@AuraEnabled
    public static string SearchAcc(string accName, string accInd)
    {
        string accId;
        list<Account> AL=[select Id,Name from Account where name=:accName and Industry=:accInd];
        if(AL.size()==0)
        {
            accId ='NoData';
        }
        else
        {
            accId=AL[0].Id;
        }
        return accId;
    }
    
    @AuraEnabled
    public static list<Contact> conList(string accId)
    {
        list<contact> CL=[select Id,FirstName,LastName,Email from Contact where AccountId=:accId];
        return CL;
    }
    
    @AuraEnabled
    public static List<Opportunity> Opplist(string accId)
    {
        list<Opportunity> OL= [select Id,Name,StageName,Amount from Opportunity where AccountId=:accId];
        return OL;
    }
}