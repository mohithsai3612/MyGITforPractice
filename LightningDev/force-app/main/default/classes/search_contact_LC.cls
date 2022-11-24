public class search_contact_LC 
{
@AuraEnabled
    public static list<Contact> searchcon(string searchtx)
    {
       string sc = '%'+searchtx+'%';
        list<Contact> cl=[select id,Name,Phone,Fax from Contact where Name Like :sc];
        return cl;
    }
}