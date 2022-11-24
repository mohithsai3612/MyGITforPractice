public with sharing class lwc_searchaccount {
    @AuraEnabled(cacheable=true)
    public static list<Account> accdata()
    {
     return[select id,Name,Phone,fax,Industry from Account];  
    }
    
}