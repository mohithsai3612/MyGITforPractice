@RestResource(urlmapping='/createaccount/*')
Global class Rest_get 
{
 @HttpGet
    Global static string invoke()
 {
     RestRequest request=RestContext.request;
     map<string,string> urlmap=request.params;
     system.JSONGenerator js= json.createGenerator(true);
     js.writeStartObject();
     
     try
     {
      Account A= new Account();
         A.Name=urlmap.get('Name');
         A.Phone=urlmap.get('Phone');
         A.Industry= urlmap.get('Industry');
         insert A;
         js.writeStringField('Status', 'SUCCESS');
         js.writeStringField('Account ID', A.Id);
     }
     catch(exception E)
     {
         js.writeStringField('Status', 'failed');
         js.writeStringField('Error', E.getMessage());
     }
     js.writeEndObject();
     string result=js.getAsString();
     return result;
 }
}