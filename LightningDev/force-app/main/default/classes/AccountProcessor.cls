public without sharing class  AccountProcessor 
{
	@future
    public static void countContacts(list<Id> recordIds){
        list<account> accounts=[select Id,(select Id from Contacts) from Account where Id IN :recordIds];
        for(Account acc:accounts){
            acc.Number_Of_Contacts__c=acc.Contacts.size();
        }
        update accounts;
    }
    
    
}