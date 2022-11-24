public class Integration_sms 
{
    @future(callout=true)
 public static void sendMessage(set<Id> leadids)
 {
     list<lead> leads=[select id,LastName,	Mobile_number__c from lead where Id in:leadids];
     for(lead el:leads)
         
     {
         Http p =new Http();
         HttpRequest request= new HttpRequest();
         string ep='https://api.textlocal.in/send/?';
         ep= ep+'apikey=NGI1MDcyNGQ2ODRmNjI3NjM2NTU3OTRhN2E0NTZmNDQ=';
         ep = ep+'&numbers=91'+el.Mobile_number__c;
         ep = ep+'&sender=TXTLCL';
         ep= ep+'&message='+'Welcome to salesforce from Mohith sai';
         request.setEndpoint(ep);
         request.setMethod('GET');
         HttpResponse response= p.send(request);
     }
 }
}