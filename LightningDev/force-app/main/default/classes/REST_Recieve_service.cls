@RestResource(urlmapping='/createAccount/*')
Global class REST_Recieve_service 
{
 @HttpPost
    global static string callme(string Name, String Phone, string Industry)
 {
     system.JSONGenerator jp=json.createGenerator(true);
     jp.writeStartObject();
     try
     {
        Account A= new Account();
         A.Name=Name;
         A.Phone=Phone;
         A.Industry=Industry;
         insert A;
         jp.writeStringField('Status', 'SUCCESS');
         jp.writeStringField('Account ID', a.Id);
         
     }
     catch(exception E)
     {
         jp.writeStringField('Status', 'FAILED');
         jp.writeStringField('Account ID', e.getMessage());
     }
     
     jp.writeEndObject();
     string result=jp.getAsString();
     return result;
     
 }
}