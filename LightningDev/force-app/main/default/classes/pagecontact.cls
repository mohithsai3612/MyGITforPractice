public with sharing class pagecontact {
   @AuraEnabled(cacheable=true)
   public static list<contact> getcontacts(){
    return[select id,Name from contact];

   }
}