public with sharing class cl_lwc_searchopt_contact 
{
  @AuraEnabled(cacheable=true)
  public static list<Contact> searchcontact(string searchkey)
  {
      string keey='%'+searchkey+'%';
      //return[select Id,FirstName,LastName,Email from Contact where Name like :keey];

      list<Contact> conlist=(list<Contact>)[FIND :keey RETURNING Contact(FirstName,LastName,Email)][0];
      return conlist;
  }  
}