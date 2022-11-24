public class Integration_generator 
{
   public void createJson()
   {
      system.JSONGenerator js = json.createGenerator(true);   //step1 create jsonGenerator
      js.writeStartObject();                                  //step2 start writing json
         
           list<Account> ac=[select Name, Phone from Account where Phone<> null];
           for(Account EA:ac)
           {
             js.writeStringField('Account Name', EA.Name);
               if(EA.Phone != null)
               {
                   js.writeStringField('Phone', EA.Phone);
               }
               else
               {
                   js.writeNull();
               }
               
               js.writeStringField('Status', 'Success');
           }
       
      
       
       js.writeEndObject();                                   // step3 end object
       string Result = js.getAsString();                      // final output
           system.debug(Result);                              // see/check output
   }
}