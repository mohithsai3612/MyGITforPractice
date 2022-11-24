public with sharing class cl_patientdata 
{
   @AuraEnabled(cacheable=true)
   
    public static list<Patient__c> findpatient(string searchkey)
   {
    string key='%'+searchkey+'%';
    return [select Id,Patient_First_name__c,Patient_Mobile_number__c from Patient__c where Name like :key];
   }
}